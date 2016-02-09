.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mFilledWindow:Landroid/database/CursorWindow;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@a
    .line 90
    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 91
    check-cast p1, Landroid/database/CrossProcessCursor;

    #@10
    .end local p1    # "cursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@12
    .line 95
    :goto_0
    iput-object p3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    #@14
    .line 97
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v0

    #@17
    .line 98
    :try_start_0
    invoke-direct {p0, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v0

    #@1b
    .line 89
    return-void

    #@1c
    .line 93
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    #@1e
    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    #@21
    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@23
    goto :goto_0

    #@24
    .line 97
    .end local p1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v0

    #@26
    throw v1
.end method

.method private closeFilledWindowLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 104
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    #@7
    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    #@a
    .line 105
    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    #@c
    .line 102
    :cond_0
    return-void
.end method

.method private createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "an observer is already registered"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 252
    :cond_0
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@f
    invoke-direct {v0, p1, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    #@12
    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@14
    .line 253
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@16
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@18
    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@1b
    .line 248
    return-void
.end method

.method private disposeLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 111
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    #@8
    .line 112
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@a
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    #@d
    .line 113
    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@f
    .line 116
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    #@12
    .line 109
    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 121
    new-instance v0, Landroid/database/StaleDataException;

    #@6
    const-string/jumbo v1, "Attempted to access a cursor after it has been closed."

    #@9
    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 119
    :cond_0
    return-void
.end method

.method private unregisterObserverProxyLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 258
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 259
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@7
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@9
    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@c
    .line 260
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@e
    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    #@11
    .line 261
    iput-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    #@13
    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 128
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 126
    return-void

    #@8
    .line 127
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 212
    return-void

    #@8
    .line 213
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public deactivate()V
    .locals 2

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 203
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    #@a
    .line 204
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@c
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    #@f
    .line 207
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 200
    return-void

    #@14
    .line 201
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    .locals 3

    #@0
    .prologue
    .line 138
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 139
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    #@6
    .line 141
    new-instance v0, Landroid/database/BulkCursorDescriptor;

    #@8
    invoke-direct {v0}, Landroid/database/BulkCursorDescriptor;-><init>()V

    #@b
    .line 142
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    iput-object p0, v0, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    #@d
    .line 143
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@f
    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, v0, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    #@15
    .line 144
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@17
    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    #@1a
    move-result v1

    #@1b
    iput-boolean v1, v0, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    #@1d
    .line 145
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@1f
    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    #@22
    move-result v1

    #@23
    iput v1, v0, Landroid/database/BulkCursorDescriptor;->count:I

    #@25
    .line 146
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@27
    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, v0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    #@2d
    .line 147
    iget-object v1, v0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 150
    iget-object v1, v0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    #@33
    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :cond_0
    monitor-exit v2

    #@37
    .line 152
    return-object v0

    #@38
    .line 138
    .end local v0    # "d":Landroid/database/BulkCursorDescriptor;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v2

    #@3a
    throw v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 267
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 268
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    #@6
    .line 270
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@8
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v0

    #@c
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 267
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 158
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    #@7
    .line 161
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@9
    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 162
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 163
    return-object v3

    #@14
    .line 166
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@16
    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    #@19
    move-result-object v0

    #@1a
    .line 167
    .local v0, "window":Landroid/database/CursorWindow;
    if-eqz v0, :cond_2

    #@1c
    .line 168
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    #@1f
    .line 181
    :goto_0
    if-eqz v0, :cond_1

    #@21
    .line 184
    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :cond_1
    monitor-exit v2

    #@25
    .line 186
    return-object v0

    #@26
    .line 170
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    #@28
    .line 171
    if-nez v0, :cond_4

    #@2a
    .line 172
    new-instance v1, Landroid/database/CursorWindow;

    #@2c
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    #@2e
    invoke-direct {v1, v3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    #@31
    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    #@33
    .line 173
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    #@35
    .line 178
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@37
    invoke-interface {v1, p1, v0}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 158
    .end local v0    # "window":Landroid/database/CursorWindow;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1

    #@3e
    .line 174
    .restart local v0    # "window":Landroid/database/CursorWindow;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    #@41
    move-result v1

    #@42
    if-lt p1, v1, :cond_5

    #@44
    .line 175
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    #@47
    move-result v1

    #@48
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    #@4b
    move-result v3

    #@4c
    add-int/2addr v1, v3

    #@4d
    if-lt p1, v1, :cond_3

    #@4f
    .line 176
    :cond_5
    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    goto :goto_1
.end method

.method public onMove(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 192
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 193
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    #@6
    .line 195
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@8
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@a
    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getPosition()I

    #@d
    move-result v2

    #@e
    invoke-interface {v0, v2, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 191
    return-void

    #@13
    .line 192
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public requery(Landroid/database/IContentObserver;)I
    .locals 5
    .param p1, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    .line 220
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    #@6
    .line 223
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 226
    :try_start_1
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@b
    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->requery()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 227
    const/4 v2, -0x1

    #@12
    monitor-exit v3

    #@13
    return v2

    #@14
    .line 229
    :catch_0
    move-exception v0

    #@15
    .line 230
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v4, " Requery misuse db, mCursor isClosed:"

    #@25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 232
    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@2b
    invoke-interface {v4}, Landroid/database/CrossProcessCursor;->isClosed()Z

    #@2e
    move-result v4

    #@2f
    .line 231
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 230
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    .line 233
    .local v1, "leakProgram":Ljava/lang/IllegalStateException;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    .line 220
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "leakProgram":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit v3

    #@3d
    throw v2

    #@3e
    .line 236
    :cond_0
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    #@41
    .line 237
    invoke-direct {p0, p1}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    #@44
    .line 238
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@46
    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    move-result v2

    #@4a
    monitor-exit v3

    #@4b
    return v2
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 276
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 277
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    #@6
    .line 279
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    #@8
    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v0

    #@c
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 276
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

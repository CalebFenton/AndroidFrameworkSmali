.class public final Landroid/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Landroid/database/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    #@3
    .line 31
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    #@5
    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    #@8
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    #@a
    .line 28
    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 63
    new-instance v0, Landroid/database/StaleDataException;

    #@6
    const-string/jumbo v1, "Attempted to access a cursor after it has been closed."

    #@9
    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 117
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    #@4
    .line 119
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@a
    invoke-interface {v1}, Landroid/database/IBulkCursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 125
    :goto_0
    iput-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@f
    .line 116
    :cond_0
    return-void

    #@10
    .line 122
    :catch_0
    move-exception v0

    #@11
    .line 123
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BulkCursor"

    #@14
    const-string/jumbo v2, "Remote process exception when closing"

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 124
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1c
    .line 125
    iput-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@1e
    .line 124
    throw v1
.end method

.method public deactivate()V
    .locals 3

    #@0
    .prologue
    .line 104
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    #@3
    .line 106
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@9
    invoke-interface {v1}, Landroid/database/IBulkCursor;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 101
    :cond_0
    :goto_0
    return-void

    #@d
    .line 109
    :catch_0
    move-exception v0

    #@e
    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "BulkCursor"

    #@11
    const-string/jumbo v2, "Remote process exception when deactivating"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    #@3
    .line 160
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    #@3
    .line 70
    iget v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    #@5
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    #@3
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@5
    invoke-interface {v1}, Landroid/database/IBulkCursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 169
    :catch_0
    move-exception v0

    #@b
    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getObserver()Landroid/database/IContentObserver;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    #@2
    invoke-virtual {v0}, Landroid/database/AbstractCursor$SelfContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public initialize(Landroid/database/BulkCursorDescriptor;)V
    .locals 1
    .param p1, "d"    # Landroid/database/BulkCursorDescriptor;

    #@0
    .prologue
    .line 42
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    #@2
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@4
    .line 43
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    #@6
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    #@8
    .line 44
    iget-boolean v0, p1, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    #@a
    iput-boolean v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    #@c
    .line 45
    iget v0, p1, Landroid/database/BulkCursorDescriptor;->count:I

    #@e
    iput v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    #@10
    .line 46
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 47
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    #@16
    invoke-virtual {p0, v0}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V

    #@19
    .line 41
    :cond_0
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    #@4
    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 80
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    #@a
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    #@d
    move-result v1

    #@e
    if-ge p2, v1, :cond_2

    #@10
    .line 82
    :cond_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@12
    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 93
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 94
    return v3

    #@1e
    .line 81
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    #@20
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    #@23
    move-result v1

    #@24
    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    #@26
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    #@29
    move-result v2

    #@2a
    add-int/2addr v1, v2

    #@2b
    if-ge p2, v1, :cond_0

    #@2d
    .line 83
    iget-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 84
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@33
    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->onMove(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@36
    goto :goto_0

    #@37
    .line 86
    :catch_0
    move-exception v0

    #@38
    .line 88
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "BulkCursor"

    #@3b
    const-string/jumbo v2, "Unable to get window because the remote process is dead"

    #@3e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 89
    return v3

    #@42
    .line 97
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x1

    #@43
    return v1
.end method

.method public requery()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 132
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    #@5
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@7
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2}, Landroid/database/IBulkCursor;->requery(Landroid/database/IContentObserver;)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    #@11
    .line 136
    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    #@13
    if-eq v1, v3, :cond_0

    #@15
    .line 137
    const/4 v1, -0x1

    #@16
    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    #@18
    .line 138
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->closeWindow()V

    #@1b
    .line 143
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    #@1e
    .line 144
    const/4 v1, 0x1

    #@1f
    return v1

    #@20
    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 147
    return v4

    #@24
    .line 149
    :catch_0
    move-exception v0

    #@25
    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BulkCursor"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Unable to requery because the remote process exception "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 151
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V

    #@46
    .line 152
    return v4
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    #@3
    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    #@5
    invoke-interface {v1, p1}, Landroid/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 182
    :catch_0
    move-exception v0

    #@b
    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BulkCursor"

    #@e
    const-string/jumbo v2, "respond() threw RemoteException, returning an empty bundle."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 187
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@16
    return-object v1
.end method

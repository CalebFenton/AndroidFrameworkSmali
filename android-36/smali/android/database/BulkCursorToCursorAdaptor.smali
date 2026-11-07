.class public final Landroid/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private greylist-max-o mBulkCursor:Landroid/database/IBulkCursor;

.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private greylist-max-o mCount:I

.field private greylist-max-o mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

.field private greylist-max-o mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 31
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    return-void
.end method

.method private greylist-max-o throwIfCursorIsClosed()V
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v0, :cond_5

    .line 65
    return-void

    .line 63
    :cond_5
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 117
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 119
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v0, :cond_20

    .line 121
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->close()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_13
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 125
    nop

    :goto_e
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    .line 126
    goto :goto_20

    .line 125
    :catchall_11
    move-exception v1

    goto :goto_1d

    .line 122
    :catch_13
    move-exception v1

    .line 123
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_14
    const-string v2, "BulkCursor"

    const-string v3, "Remote process exception when closing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 125
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_e

    :goto_1d
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    .line 126
    throw v1

    .line 128
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist deactivate()V
    .registers 4

    .line 104
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 106
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v0, :cond_15

    .line 108
    :try_start_7
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v0}, Landroid/database/IBulkCursor;->deactivate()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 111
    goto :goto_15

    .line 109
    :catch_d
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 158
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 160
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 70
    iget v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 165
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 168
    :try_start_3
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v0}, Landroid/database/IBulkCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 169
    :catch_a
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o getObserver()Landroid/database/IContentObserver;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-virtual {v0}, Landroid/database/AbstractCursor$SelfContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o initialize(Landroid/database/BulkCursorDescriptor;)V
    .registers 3
    .param p1, "d"    # Landroid/database/BulkCursorDescriptor;

    .line 42
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    .line 43
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 44
    iget-boolean v0, p1, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    iput-boolean v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    .line 45
    iget v0, p1, Landroid/database/BulkCursorDescriptor;->count:I

    iput v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 46
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_19

    .line 47
    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {p0, v0}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V

    .line 49
    :cond_19
    return-void
.end method

.method public whitelist onMove(II)Z
    .registers 7
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 75
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 79
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 80
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_2a

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 81
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_20

    goto :goto_2a

    .line 83
    :cond_20
    iget-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_33

    .line 84
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->onMove(I)V

    goto :goto_33

    .line 82
    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_33} :catch_3b

    .line 90
    :cond_33
    :goto_33
    nop

    .line 93
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_39

    .line 94
    return v0

    .line 97
    :cond_39
    const/4 v0, 0x1

    return v0

    .line 86
    :catch_3b
    move-exception v1

    .line 88
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "BulkCursor"

    const-string v3, "Unable to get window because the remote process is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v0
.end method

.method public whitelist requery()Z
    .registers 5

    .line 132
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 135
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/IBulkCursor;->requery(Landroid/database/IContentObserver;)I

    move-result v1

    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 136
    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 137
    iput v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    .line 138
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->closeWindow()V

    .line 143
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_1f
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    .line 147
    return v0

    .line 149
    :catch_23
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to requery because the remote process exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BulkCursor"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V

    .line 152
    return v0
.end method

.method public whitelist respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 178
    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 181
    :try_start_3
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v0, p1}, Landroid/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 182
    :catch_a
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string/jumbo v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v1
.end method

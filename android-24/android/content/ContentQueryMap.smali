.class public Landroid/content/ContentQueryMap;
.super Ljava/util/Observable;
.source "ContentQueryMap.java"


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private volatile mCursor:Landroid/database/Cursor;

.field private mDirty:Z

.field private mHandlerForUpdateNotifications:Landroid/os/Handler;

.field private mKeepUpdated:Z

.field private mKeyColumn:I

.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Landroid/content/ContentQueryMap;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNameOfKey"    # Ljava/lang/String;
    .param p3, "keepUpdated"    # Z
    .param p4, "handlerForUpdateNotifications"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 62
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    #@5
    .line 40
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    #@7
    .line 41
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    #@9
    .line 43
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    #@b
    .line 48
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    #@d
    .line 64
    iput-object p1, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@f
    .line 65
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@11
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    #@17
    .line 66
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@19
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    #@1f
    .line 67
    iput-object p4, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    #@21
    .line 68
    invoke-virtual {p0, p3}, Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V

    #@24
    .line 73
    if-nez p3, :cond_0

    #@26
    .line 74
    invoke-direct {p0, p1}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    #@29
    .line 63
    :cond_0
    return-void
.end method

.method private declared-synchronized readCursorIntoCache(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 150
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    #@3
    if-eqz v3, :cond_1

    #@5
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@a
    move-result v0

    #@b
    .line 151
    .local v0, "capacity":I
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    #@d
    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    #@10
    iput-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    #@12
    .line 152
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    .line 153
    new-instance v2, Landroid/content/ContentValues;

    #@1a
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@1d
    .line 154
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    #@20
    array-length v3, v3

    #@21
    if-ge v1, v3, :cond_2

    #@23
    .line 155
    iget v3, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    #@25
    if-eq v1, v3, :cond_0

    #@27
    .line 156
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    #@29
    aget-object v3, v3, v1

    #@2b
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_2

    #@35
    .line 150
    .end local v0    # "capacity":I
    .end local v1    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v0, 0x0

    #@36
    .restart local v0    # "capacity":I
    goto :goto_0

    #@37
    .line 159
    .restart local v1    # "i":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    #@39
    iget v4, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    #@3b
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    goto :goto_1

    #@43
    .end local v0    # "capacity":I
    .end local v1    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    #@44
    monitor-exit p0

    #@45
    throw v3

    #@46
    .restart local v0    # "capacity":I
    :cond_3
    monitor-exit p0

    #@47
    .line 148
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 170
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@7
    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@c
    .line 171
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@f
    .line 173
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@14
    .line 174
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 168
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->close()V

    #@7
    .line 180
    :cond_0
    invoke-super {p0}, Ljava/util/Observable;->finalize()V

    #@a
    .line 178
    return-void
.end method

.method public declared-synchronized getRows()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 164
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    #@8
    .line 165
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "rowName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 125
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    #@8
    .line 126
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public requery()V
    .locals 2

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@2
    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@4
    .line 136
    return-void

    #@5
    .line 138
    :cond_0
    const/4 v1, 0x0

    #@6
    iput-boolean v1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    #@8
    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 141
    return-void

    #@f
    .line 143
    :cond_1
    invoke-direct {p0, v0}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    #@12
    .line 144
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->setChanged()V

    #@15
    .line 145
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->notifyObservers()V

    #@18
    .line 130
    return-void
.end method

.method public setKeepUpdated(Z)V
    .locals 3
    .param p1, "keepUpdated"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 87
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    #@3
    if-ne p1, v0, :cond_0

    #@5
    return-void

    #@6
    .line 88
    :cond_0
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    #@8
    .line 90
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    #@a
    if-nez v0, :cond_1

    #@c
    .line 91
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@e
    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@10
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@13
    .line 92
    iput-object v2, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@15
    .line 86
    :goto_0
    return-void

    #@16
    .line 94
    :cond_1
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 95
    new-instance v0, Landroid/os/Handler;

    #@1c
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    #@21
    .line 97
    :cond_2
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@23
    if-nez v0, :cond_3

    #@25
    .line 98
    new-instance v0, Landroid/content/ContentQueryMap$1;

    #@27
    iget-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    #@29
    invoke-direct {v0, p0, v1}, Landroid/content/ContentQueryMap$1;-><init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V

    #@2c
    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@2e
    .line 112
    :cond_3
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    #@30
    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    #@32
    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@35
    .line 115
    const/4 v0, 0x1

    #@36
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    #@38
    goto :goto_0
.end method

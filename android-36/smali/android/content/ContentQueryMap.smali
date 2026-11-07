.class public Landroid/content/ContentQueryMap;
.super Ljava/util/Observable;
.source "ContentQueryMap.java"


# instance fields
.field private greylist-max-o mColumnNames:[Ljava/lang/String;

.field private greylist-max-o mContentObserver:Landroid/database/ContentObserver;

.field private volatile greylist-max-o mCursor:Landroid/database/Cursor;

.field private greylist-max-o mDirty:Z

.field private greylist-max-o mHandlerForUpdateNotifications:Landroid/os/Handler;

.field private greylist-max-o mKeepUpdated:Z

.field private greylist-max-o mKeyColumn:I

.field private greylist-max-o mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDirty(Landroid/content/ContentQueryMap;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNameOfKey"    # Ljava/lang/String;
    .param p3, "keepUpdated"    # Z
    .param p4, "handlerForUpdateNotifications"    # Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    .line 43
    iput-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    .line 48
    iput-boolean v1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 64
    iput-object p1, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    .line 65
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    .line 67
    iput-object p4, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0, p3}, Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V

    .line 73
    if-nez p3, :cond_29

    .line 74
    invoke-direct {p0, p1}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    .line 76
    :cond_29
    return-void
.end method

.method private declared-synchronized greylist-max-o readCursorIntoCache(Landroid/database/Cursor;)V
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_d

    .end local p0    # "this":Landroid/content/ContentQueryMap;
    :cond_c
    const/4 v0, 0x0

    .line 151
    .local v0, "capacity":I
    :goto_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    .line 152
    :goto_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 153
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 155
    iget v3, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    if-eq v2, v3, :cond_34

    .line 156
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 159
    .end local v2    # "i":I
    :cond_37
    iget-object v2, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    iget v3, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_46

    .line 160
    nop

    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_14

    .line 161
    :cond_44
    monitor-exit p0

    return-void

    .line 149
    .end local v0    # "capacity":I
    .end local p1    # "cursor":Landroid/database/Cursor;
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method


# virtual methods
.method public declared-synchronized whitelist close()V
    .registers 4

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 170
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    .line 173
    .end local p0    # "this":Landroid/content/ContentQueryMap;
    :cond_f
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 175
    monitor-exit p0

    return-void

    .line 168
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->close()V

    .line 180
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 181
    return-void
.end method

.method public declared-synchronized whitelist getRows()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    .line 165
    .end local p0    # "this":Landroid/content/ContentQueryMap;
    :cond_8
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 163
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized whitelist getValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 3
    .param p1, "rowName"    # Ljava/lang/String;

    monitor-enter p0

    .line 125
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    .line 126
    .end local p0    # "this":Landroid/content/ContentQueryMap;
    :cond_8
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 124
    .end local p1    # "rowName":Ljava/lang/String;
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public whitelist requery()V
    .registers 3

    .line 131
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_5

    .line 136
    return-void

    .line 138
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    if-nez v1, :cond_f

    .line 141
    return-void

    .line 143
    :cond_f
    invoke-direct {p0, v0}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->setChanged()V

    .line 145
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->notifyObservers()V

    .line 146
    return-void
.end method

.method public whitelist setKeepUpdated(Z)V
    .registers 4
    .param p1, "keepUpdated"    # Z

    .line 87
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 88
    :cond_5
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    .line 90
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    if-nez v0, :cond_16

    .line 91
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_38

    .line 94
    :cond_16
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    if-nez v0, :cond_21

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 97
    :cond_21
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2e

    .line 98
    new-instance v0, Landroid/content/ContentQueryMap$1;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/content/ContentQueryMap$1;-><init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    .line 112
    :cond_2e
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 117
    :goto_38
    return-void
.end method

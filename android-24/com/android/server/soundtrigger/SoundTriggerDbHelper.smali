.class public Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SoundTriggerDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerDbHelper$GenericSoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_ST_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB )"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "st_sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundTriggerDbHelper"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "st_sound_model.db"

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@8
    .line 61
    return-void
.end method


# virtual methods
.method public deleteGenericSoundModel(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "model_uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 129
    monitor-enter p0

    #@2
    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5
    move-result-object v1

    #@6
    .line 131
    .local v1, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    if-nez v1, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 132
    return v3

    #@a
    .line 135
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@d
    move-result-object v0

    #@e
    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "model_uuid=\'"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    .line 137
    iget-object v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    #@1c
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 137
    const-string/jumbo v5, "\'"

    #@27
    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    move-result-object v2

    #@2f
    .line 139
    .local v2, "soundModelClause":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v4, "st_sound_model"

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v0, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    const/4 v3, 0x1

    #@3a
    .line 141
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3d
    monitor-exit p0

    #@3e
    .line 139
    return v3

    #@3f
    .line 140
    :catchall_0
    move-exception v3

    #@40
    .line 141
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@43
    .line 140
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@44
    .line 129
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .end local v2    # "soundModelClause":Ljava/lang/String;
    :catchall_1
    move-exception v3

    #@45
    monitor-exit p0

    #@46
    throw v3
.end method

.method public getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 8
    .param p1, "model_uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 101
    monitor-enter p0

    #@2
    .line 104
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v6, "SELECT  * FROM st_sound_model WHERE model_uuid= \'"

    #@a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    .line 106
    const-string/jumbo v6, "\'"

    #@15
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 107
    .local v3, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@20
    move-result-object v2

    #@21
    .line 108
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    #@22
    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@25
    move-result-object v0

    #@26
    .line 110
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_0

    #@2c
    .line 113
    const-string/jumbo v5, "data"

    #@2f
    .line 112
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@32
    move-result v5

    #@33
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    #@36
    move-result-object v1

    #@37
    .line 115
    .local v1, "data":[B
    const-string/jumbo v5, "vendor_uuid"

    #@3a
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3d
    move-result v5

    #@3e
    .line 114
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 116
    .local v4, "vendor_uuid":Ljava/lang/String;
    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    #@44
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@47
    move-result-object v6

    #@48
    invoke-direct {v5, p1, v6, v1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 121
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@4e
    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    monitor-exit p0

    #@52
    .line 116
    return-object v5

    #@53
    .line 121
    .end local v1    # "data":[B
    .end local v4    # "vendor_uuid":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@56
    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@59
    monitor-exit p0

    #@5a
    .line 125
    return-object v7

    #@5b
    .line 120
    :catchall_0
    move-exception v5

    #@5c
    .line 121
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@5f
    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@62
    .line 120
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    .line 101
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "selectQuery":Ljava/lang/String;
    :catchall_1
    move-exception v5

    #@64
    monitor-exit p0

    #@65
    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB )"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 66
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "DROP TABLE IF EXISTS st_sound_model"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    #@9
    .line 72
    return-void
.end method

.method public updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    .locals 6
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    #@0
    .prologue
    .line 83
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@4
    move-result-object v0

    #@5
    .line 85
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    #@7
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@a
    .line 86
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "model_uuid"

    #@d
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    #@f
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 87
    const-string/jumbo v2, "vendor_uuid"

    #@19
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->vendorUuid:Ljava/util/UUID;

    #@1b
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 88
    const-string/jumbo v2, "data"

    #@25
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->data:[B

    #@27
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 91
    :try_start_1
    const-string/jumbo v2, "st_sound_model"

    #@2d
    const/4 v3, 0x0

    #@2e
    .line 92
    const/4 v4, 0x5

    #@2f
    .line 91
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    move-result-wide v2

    #@33
    .line 92
    const-wide/16 v4, -0x1

    #@35
    .line 91
    cmp-long v2, v2, v4

    #@37
    if-eqz v2, :cond_0

    #@39
    const/4 v2, 0x1

    #@3a
    .line 94
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3d
    monitor-exit p0

    #@3e
    .line 91
    return v2

    #@3f
    :cond_0
    const/4 v2, 0x0

    #@40
    goto :goto_0

    #@41
    .line 93
    :catchall_0
    move-exception v2

    #@42
    .line 94
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@45
    .line 93
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    .line 83
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    #@47
    monitor-exit p0

    #@48
    throw v2
.end method

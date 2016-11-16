.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT, keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT)"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    const-string/jumbo v0, "sound_model.db"

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x5

    #@5
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@8
    .line 71
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 273
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 275
    :cond_0
    const-string/jumbo v3, ","

    #@b
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 276
    .local v2, "usersStr":[Ljava/lang/String;
    array-length v3, v2

    #@10
    new-array v1, v3, [I

    #@12
    .line 277
    .local v1, "users":[I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@14
    if-ge v0, v3, :cond_1

    #@16
    .line 278
    aget-object v3, v2, v0

    #@18
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b
    move-result v3

    #@1c
    aput v3, v1, v0

    #@1e
    .line 277
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 280
    :cond_1
    return-object v1
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .locals 3
    .param p0, "users"    # [I

    #@0
    .prologue
    .line 258
    if-nez p0, :cond_0

    #@2
    .line 259
    const-string/jumbo v2, ""

    #@5
    return-object v2

    #@6
    .line 261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 262
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 263
    if-eqz v0, :cond_1

    #@11
    .line 264
    const/16 v2, 0x2c

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 266
    :cond_1
    aget v2, p0, v0

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 262
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 268
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 138
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@8
    move-result-object p3

    #@9
    .line 139
    monitor-enter p0

    #@a
    .line 140
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    move-result-object v1

    #@e
    .line 142
    .local v1, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-nez v1, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 143
    return v3

    #@12
    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@15
    move-result-object v0

    #@16
    .line 148
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "model_uuid=\'"

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 149
    iget-object v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@24
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 149
    const-string/jumbo v5, "\'"

    #@2f
    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@36
    move-result-object v2

    #@37
    .line 151
    .local v2, "soundModelClause":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v4, "sound_model"

    #@3a
    const/4 v5, 0x0

    #@3b
    invoke-virtual {v0, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_1

    #@41
    const/4 v3, 0x1

    #@42
    .line 153
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@45
    monitor-exit p0

    #@46
    .line 151
    return v3

    #@47
    .line 152
    :catchall_0
    move-exception v3

    #@48
    .line 153
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@4b
    .line 152
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4c
    .line 139
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v2    # "soundModelClause":Ljava/lang/String;
    :catchall_1
    move-exception v3

    #@4d
    monitor-exit p0

    #@4e
    throw v3
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 21
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@7
    move-result-object p3

    #@8
    .line 168
    monitor-enter p0

    #@9
    .line 170
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    move/from16 v0, p1

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 172
    const-string/jumbo v3, "\' AND "

    #@1e
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 172
    const-string/jumbo v3, "locale"

    #@25
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 172
    const-string/jumbo v3, "=\'"

    #@2c
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    move-object/from16 v0, p3

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 172
    const-string/jumbo v3, "\'"

    #@39
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v15

    #@41
    .line 173
    .local v15, "selectQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@44
    move-result-object v10

    #@45
    .line 174
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    #@46
    invoke-virtual {v10, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    move-result-object v8

    #@4a
    .line 177
    .local v8, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_2

    #@50
    .line 179
    :cond_0
    const-string/jumbo v2, "type"

    #@53
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@56
    move-result v2

    #@57
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    #@5a
    move-result v16

    #@5b
    .line 180
    .local v16, "type":I
    if-eqz v16, :cond_3

    #@5d
    .line 246
    :cond_1
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_0

    #@63
    .line 248
    .end local v16    # "type":I
    :cond_2
    const-string/jumbo v2, "SoundModelDBHelper"

    #@66
    const-string/jumbo v3, "No SoundModel available for the given keyphrase"

    #@69
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    .line 250
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@6f
    .line 251
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@72
    .line 253
    const/4 v2, 0x0

    #@73
    monitor-exit p0

    #@74
    return-object v2

    #@75
    .line 188
    .restart local v16    # "type":I
    :cond_3
    :try_start_3
    const-string/jumbo v2, "model_uuid"

    #@78
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@7b
    move-result v2

    #@7c
    .line 187
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7f
    move-result-object v14

    #@80
    .line 189
    .local v14, "modelUuid":Ljava/lang/String;
    if-nez v14, :cond_4

    #@82
    .line 190
    const-string/jumbo v2, "SoundModelDBHelper"

    #@85
    const-string/jumbo v3, "Ignoring SoundModel since it doesn\'t specify an ID"

    #@88
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8b
    goto :goto_0

    #@8c
    .line 249
    .end local v14    # "modelUuid":Ljava/lang/String;
    .end local v16    # "type":I
    :catchall_0
    move-exception v2

    #@8d
    .line 250
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@90
    .line 251
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@93
    .line 249
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@94
    .line 168
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "selectQuery":Ljava/lang/String;
    :catchall_1
    move-exception v2

    #@95
    monitor-exit p0

    #@96
    throw v2

    #@97
    .line 194
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "modelUuid":Ljava/lang/String;
    .restart local v15    # "selectQuery":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_4
    const/16 v20, 0x0

    #@99
    .line 195
    .local v20, "vendorUuidString":Ljava/lang/String;
    :try_start_5
    const-string/jumbo v2, "vendor_uuid"

    #@9c
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@9f
    move-result v19

    #@a0
    .line 196
    .local v19, "vendorUuidColumn":I
    const/4 v2, -0x1

    #@a1
    move/from16 v0, v19

    #@a3
    if-eq v0, v2, :cond_5

    #@a5
    .line 197
    move/from16 v0, v19

    #@a7
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@aa
    move-result-object v20

    #@ab
    .line 199
    .end local v20    # "vendorUuidString":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "data"

    #@ae
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@b1
    move-result v2

    #@b2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    #@b5
    move-result-object v9

    #@b6
    .line 201
    .local v9, "data":[B
    const-string/jumbo v2, "recognition_modes"

    #@b9
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@bc
    move-result v2

    #@bd
    .line 200
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    #@c0
    move-result v4

    #@c1
    .line 203
    .local v4, "recognitionModes":I
    const-string/jumbo v2, "users"

    #@c4
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@c7
    move-result v2

    #@c8
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@cb
    move-result-object v2

    #@cc
    .line 202
    invoke-static {v2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    #@cf
    move-result-object v7

    #@d0
    .line 205
    .local v7, "users":[I
    const-string/jumbo v2, "locale"

    #@d3
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@d6
    move-result v2

    #@d7
    .line 204
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@da
    move-result-object v5

    #@db
    .line 207
    .local v5, "modelLocale":Ljava/lang/String;
    const-string/jumbo v2, "hint_text"

    #@de
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@e1
    move-result v2

    #@e2
    .line 206
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e5
    move-result-object v6

    #@e6
    .line 210
    .local v6, "text":Ljava/lang/String;
    if-nez v7, :cond_6

    #@e8
    .line 212
    const-string/jumbo v2, "SoundModelDBHelper"

    #@eb
    const-string/jumbo v3, "Ignoring SoundModel since it doesn\'t specify users"

    #@ee
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f1
    goto/16 :goto_0

    #@f3
    .line 216
    :cond_6
    const/4 v11, 0x0

    #@f4
    .line 217
    .local v11, "isAvailableForCurrentUser":Z
    const/4 v2, 0x0

    #@f5
    array-length v3, v7

    #@f6
    :goto_1
    if-ge v2, v3, :cond_7

    #@f8
    aget v17, v7, v2

    #@fa
    .line 218
    .local v17, "user":I
    move/from16 v0, p2

    #@fc
    move/from16 v1, v17

    #@fe
    if-ne v0, v1, :cond_9

    #@100
    .line 219
    const/4 v11, 0x1

    #@101
    .line 223
    .end local v17    # "user":I
    :cond_7
    if-eqz v11, :cond_1

    #@103
    .line 232
    const/4 v2, 0x1

    #@104
    new-array v12, v2, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@106
    .line 233
    .local v12, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@108
    move/from16 v3, p1

    #@10a
    invoke-direct/range {v2 .. v7}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    #@10d
    const/4 v3, 0x0

    #@10e
    aput-object v2, v12, v3

    #@110
    .line 235
    const/16 v18, 0x0

    #@112
    .line 236
    .local v18, "vendorUuid":Ljava/util/UUID;
    if-eqz v20, :cond_8

    #@114
    .line 237
    invoke-static/range {v20 .. v20}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@117
    move-result-object v18

    #@118
    .line 239
    .end local v18    # "vendorUuid":Ljava/util/UUID;
    :cond_8
    new-instance v13, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@11a
    .line 240
    invoke-static {v14}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@11d
    move-result-object v2

    #@11e
    .line 239
    move-object/from16 v0, v18

    #@120
    invoke-direct {v13, v2, v0, v9, v12}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@123
    .line 250
    .local v13, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@126
    .line 251
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@129
    monitor-exit p0

    #@12a
    .line 245
    return-object v13

    #@12b
    .line 217
    .end local v12    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .end local v13    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .restart local v17    # "user":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@12d
    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "CREATE TABLE sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT, keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT)"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 76
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    .line 83
    if-ge p2, v0, :cond_1

    #@3
    .line 85
    const-string/jumbo v0, "DROP TABLE IF EXISTS sound_model"

    #@6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@9
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    #@c
    .line 82
    :cond_0
    :goto_0
    return-void

    #@d
    .line 89
    :cond_1
    if-ne p2, v0, :cond_0

    #@f
    .line 90
    const-string/jumbo v0, "SoundModelDBHelper"

    #@12
    const-string/jumbo v1, "Adding vendor UUID column"

    #@15
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 91
    const-string/jumbo v0, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    #@1b
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@1e
    .line 93
    add-int/lit8 p2, p2, 0x1

    #@20
    goto :goto_0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .locals 8
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 104
    monitor-enter p0

    #@3
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@6
    move-result-object v0

    #@7
    .line 106
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    #@9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@c
    .line 107
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "model_uuid"

    #@f
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@11
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 108
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 109
    const-string/jumbo v4, "vendor_uuid"

    #@1f
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    #@21
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 111
    :cond_0
    const-string/jumbo v4, "type"

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@33
    .line 112
    const-string/jumbo v4, "data"

    #@36
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    #@38
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@3b
    .line 114
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@3d
    if-eqz v4, :cond_2

    #@3f
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@41
    array-length v4, v4

    #@42
    if-ne v4, v2, :cond_2

    #@44
    .line 115
    const-string/jumbo v4, "keyphrase_id"

    #@47
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@49
    const/4 v6, 0x0

    #@4a
    aget-object v5, v5, v6

    #@4c
    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@4e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@55
    .line 116
    const-string/jumbo v4, "recognition_modes"

    #@58
    .line 117
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@5a
    const/4 v6, 0x0

    #@5b
    aget-object v5, v5, v6

    #@5d
    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@5f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v5

    #@63
    .line 116
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@66
    .line 118
    const-string/jumbo v4, "users"

    #@69
    .line 119
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@6b
    const/4 v6, 0x0

    #@6c
    aget-object v5, v5, v6

    #@6e
    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@70
    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    .line 118
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@77
    .line 120
    const-string/jumbo v4, "locale"

    #@7a
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@7c
    const/4 v6, 0x0

    #@7d
    aget-object v5, v5, v6

    #@7f
    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@81
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    .line 121
    const-string/jumbo v4, "hint_text"

    #@87
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@89
    const/4 v6, 0x0

    #@8a
    aget-object v5, v5, v6

    #@8c
    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@8e
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@91
    .line 123
    :try_start_1
    const-string/jumbo v4, "sound_model"

    #@94
    const/4 v5, 0x0

    #@95
    .line 124
    const/4 v6, 0x5

    #@96
    .line 123
    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@99
    move-result-wide v4

    #@9a
    .line 124
    const-wide/16 v6, -0x1

    #@9c
    .line 123
    cmp-long v4, v4, v6

    #@9e
    if-eqz v4, :cond_1

    #@a0
    .line 126
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a3
    monitor-exit p0

    #@a4
    .line 123
    return v2

    #@a5
    :cond_1
    move v2, v3

    #@a6
    goto :goto_0

    #@a7
    .line 125
    :catchall_0
    move-exception v2

    #@a8
    .line 126
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@ab
    .line 125
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ac
    .line 104
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    #@ad
    monitor-exit p0

    #@ae
    throw v2

    #@af
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    monitor-exit p0

    #@b0
    .line 129
    return v3
.end method

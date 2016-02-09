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
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT PRIMARY KEY,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT)"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "sound_model.db"

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x4

    #@5
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@8
    .line 69
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 250
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 252
    :cond_0
    const-string/jumbo v3, ","

    #@b
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 253
    .local v2, "usersStr":[Ljava/lang/String;
    array-length v3, v2

    #@10
    new-array v1, v3, [I

    #@12
    .line 254
    .local v1, "users":[I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@14
    if-ge v0, v3, :cond_1

    #@16
    .line 255
    aget-object v3, v2, v0

    #@18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v3

    #@20
    aput v3, v1, v0

    #@22
    .line 254
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 257
    :cond_1
    return-object v1
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .locals 3
    .param p0, "users"    # [I

    #@0
    .prologue
    .line 235
    if-nez p0, :cond_0

    #@2
    .line 236
    const-string/jumbo v2, ""

    #@5
    return-object v2

    #@6
    .line 238
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 239
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 240
    if-eqz v0, :cond_1

    #@11
    .line 241
    const/16 v2, 0x2c

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 243
    :cond_1
    aget v2, p0, v0

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 239
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 245
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
    .line 123
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@8
    move-result-object p3

    #@9
    .line 124
    monitor-enter p0

    #@a
    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    move-result-object v1

    #@e
    .line 127
    .local v1, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-nez v1, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 128
    return v3

    #@12
    .line 132
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@15
    move-result-object v0

    #@16
    .line 133
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
    .line 134
    iget-object v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@24
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 134
    const-string/jumbo v5, "\'"

    #@2f
    .line 133
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
    .line 136
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
    .line 138
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@45
    monitor-exit p0

    #@46
    .line 136
    return v3

    #@47
    .line 137
    :catchall_0
    move-exception v3

    #@48
    .line 138
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@4b
    .line 137
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4c
    .line 124
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
    .locals 18
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@7
    move-result-object p3

    #@8
    .line 153
    monitor-enter p0

    #@9
    .line 155
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
    .line 157
    const-string/jumbo v3, "\' AND "

    #@1e
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 157
    const-string/jumbo v3, "locale"

    #@25
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 157
    const-string/jumbo v3, "=\'"

    #@2c
    .line 155
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
    .line 157
    const-string/jumbo v3, "\'"

    #@39
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v15

    #@41
    .line 158
    .local v15, "selectQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@44
    move-result-object v10

    #@45
    .line 159
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    #@46
    invoke-virtual {v10, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    move-result-object v8

    #@4a
    .line 162
    .local v8, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_2

    #@50
    .line 164
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
    .line 165
    .local v16, "type":I
    if-eqz v16, :cond_3

    #@5d
    .line 223
    :cond_1
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_0

    #@63
    .line 225
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
    .line 227
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@6f
    .line 228
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@72
    .line 230
    const/4 v2, 0x0

    #@73
    monitor-exit p0

    #@74
    return-object v2

    #@75
    .line 173
    .restart local v16    # "type":I
    :cond_3
    :try_start_3
    const-string/jumbo v2, "model_uuid"

    #@78
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@7b
    move-result v2

    #@7c
    .line 172
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7f
    move-result-object v14

    #@80
    .line 174
    .local v14, "modelUuid":Ljava/lang/String;
    if-nez v14, :cond_4

    #@82
    .line 175
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
    .line 226
    .end local v14    # "modelUuid":Ljava/lang/String;
    .end local v16    # "type":I
    :catchall_0
    move-exception v2

    #@8d
    .line 227
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@90
    .line 228
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@93
    .line 226
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@94
    .line 153
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
    .line 179
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "modelUuid":Ljava/lang/String;
    .restart local v15    # "selectQuery":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_4
    :try_start_5
    const-string/jumbo v2, "data"

    #@9a
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@9d
    move-result v2

    #@9e
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    #@a1
    move-result-object v9

    #@a2
    .line 181
    .local v9, "data":[B
    const-string/jumbo v2, "recognition_modes"

    #@a5
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@a8
    move-result v2

    #@a9
    .line 180
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    #@ac
    move-result v4

    #@ad
    .line 183
    .local v4, "recognitionModes":I
    const-string/jumbo v2, "users"

    #@b0
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@b3
    move-result v2

    #@b4
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    .line 182
    invoke-static {v2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    #@bb
    move-result-object v7

    #@bc
    .line 185
    .local v7, "users":[I
    const-string/jumbo v2, "locale"

    #@bf
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@c2
    move-result v2

    #@c3
    .line 184
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    .line 187
    .local v5, "modelLocale":Ljava/lang/String;
    const-string/jumbo v2, "hint_text"

    #@ca
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@cd
    move-result v2

    #@ce
    .line 186
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@d1
    move-result-object v6

    #@d2
    .line 190
    .local v6, "text":Ljava/lang/String;
    if-nez v7, :cond_5

    #@d4
    .line 192
    const-string/jumbo v2, "SoundModelDBHelper"

    #@d7
    const-string/jumbo v3, "Ignoring SoundModel since it doesn\'t specify users"

    #@da
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    goto :goto_0

    #@de
    .line 196
    :cond_5
    const/4 v11, 0x0

    #@df
    .line 197
    .local v11, "isAvailableForCurrentUser":Z
    const/4 v2, 0x0

    #@e0
    array-length v3, v7

    #@e1
    :goto_1
    if-ge v2, v3, :cond_6

    #@e3
    aget v17, v7, v2

    #@e5
    .line 198
    .local v17, "user":I
    move/from16 v0, p2

    #@e7
    move/from16 v1, v17

    #@e9
    if-ne v0, v1, :cond_7

    #@eb
    .line 199
    const/4 v11, 0x1

    #@ec
    .line 203
    .end local v17    # "user":I
    :cond_6
    if-eqz v11, :cond_1

    #@ee
    .line 212
    const/4 v2, 0x1

    #@ef
    new-array v12, v2, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@f1
    .line 213
    .local v12, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@f3
    move/from16 v3, p1

    #@f5
    invoke-direct/range {v2 .. v7}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    #@f8
    const/4 v3, 0x0

    #@f9
    aput-object v2, v12, v3

    #@fb
    .line 215
    new-instance v13, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@fd
    .line 216
    invoke-static {v14}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@100
    move-result-object v2

    #@101
    .line 217
    const/4 v3, 0x0

    #@102
    .line 215
    invoke-direct {v13, v2, v3, v9, v12}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@105
    .line 227
    .local v13, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@108
    .line 228
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@10b
    monitor-exit p0

    #@10c
    .line 222
    return-object v13

    #@10d
    .line 197
    .end local v12    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .end local v13    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .restart local v17    # "user":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@10f
    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "CREATE TABLE sound_model(model_uuid TEXT PRIMARY KEY,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT)"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "DROP TABLE IF EXISTS sound_model"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    #@9
    .line 80
    return-void
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
    .line 92
    monitor-enter p0

    #@3
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@6
    move-result-object v0

    #@7
    .line 94
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    #@9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@c
    .line 95
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
    .line 96
    const-string/jumbo v4, "type"

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@23
    .line 97
    const-string/jumbo v4, "data"

    #@26
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    #@28
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@2b
    .line 99
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@2d
    if-eqz v4, :cond_1

    #@2f
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@31
    array-length v4, v4

    #@32
    if-ne v4, v2, :cond_1

    #@34
    .line 100
    const-string/jumbo v4, "keyphrase_id"

    #@37
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@39
    const/4 v6, 0x0

    #@3a
    aget-object v5, v5, v6

    #@3c
    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@3e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@45
    .line 101
    const-string/jumbo v4, "recognition_modes"

    #@48
    .line 102
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@4a
    const/4 v6, 0x0

    #@4b
    aget-object v5, v5, v6

    #@4d
    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@4f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v5

    #@53
    .line 101
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@56
    .line 103
    const-string/jumbo v4, "users"

    #@59
    .line 104
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@5b
    const/4 v6, 0x0

    #@5c
    aget-object v5, v5, v6

    #@5e
    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@60
    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 103
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 105
    const-string/jumbo v4, "locale"

    #@6a
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@6c
    const/4 v6, 0x0

    #@6d
    aget-object v5, v5, v6

    #@6f
    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@71
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 106
    const-string/jumbo v4, "hint_text"

    #@77
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@79
    const/4 v6, 0x0

    #@7a
    aget-object v5, v5, v6

    #@7c
    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@7e
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@81
    .line 108
    :try_start_1
    const-string/jumbo v4, "sound_model"

    #@84
    const/4 v5, 0x0

    #@85
    .line 109
    const/4 v6, 0x5

    #@86
    .line 108
    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@89
    move-result-wide v4

    #@8a
    .line 109
    const-wide/16 v6, -0x1

    #@8c
    .line 108
    cmp-long v4, v4, v6

    #@8e
    if-eqz v4, :cond_0

    #@90
    .line 111
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@93
    monitor-exit p0

    #@94
    .line 108
    return v2

    #@95
    :cond_0
    move v2, v3

    #@96
    goto :goto_0

    #@97
    .line 110
    :catchall_0
    move-exception v2

    #@98
    .line 111
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@9b
    .line 110
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@9c
    .line 92
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    #@9d
    monitor-exit p0

    #@9e
    throw v2

    #@9f
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    monitor-exit p0

    #@a0
    .line 114
    return v3
.end method

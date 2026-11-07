.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private final greylist-max-o mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 7
    .param p1, "properties"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    .line 60
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_22

    .line 65
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p1, v2

    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 67
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2b
    if-ge v2, v0, :cond_3a

    .line 70
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 72
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method private greylist-max-o createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 75
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_94

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "type":I
    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b

    .line 152
    .end local v1    # "type":I
    :sswitch_20
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto/16 :goto_7b

    .line 157
    .end local v1    # "type":I
    :sswitch_23
    const/4 v1, 0x4

    .line 158
    .restart local v1    # "type":I
    goto :goto_7b

    .line 122
    .end local v1    # "type":I
    :sswitch_25
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_7b

    .line 133
    .end local v1    # "type":I
    :sswitch_29
    const-string v0, "album_artist"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1    # "type":I
    goto :goto_7b

    .line 129
    .end local v1    # "type":I
    :sswitch_2f
    const-string v0, "album"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_7b

    .line 104
    .end local v1    # "type":I
    :sswitch_35
    const-string/jumbo v0, "year"

    .line 105
    const v1, 0xffff

    .line 106
    .restart local v1    # "type":I
    goto :goto_7b

    .line 141
    .end local v1    # "type":I
    :sswitch_3c
    const-string v0, "composer"

    .line 142
    const v1, 0xffff

    .line 143
    .restart local v1    # "type":I
    goto :goto_7b

    .line 137
    .end local v1    # "type":I
    :sswitch_42
    const-string v0, "genre"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1    # "type":I
    goto :goto_7b

    .line 118
    .end local v1    # "type":I
    :sswitch_48
    const-string/jumbo v0, "track"

    .line 119
    const/4 v1, 0x4

    .line 120
    .restart local v1    # "type":I
    goto :goto_7b

    .line 114
    .end local v1    # "type":I
    :sswitch_4d
    const-string v0, "duration"

    .line 115
    const/4 v1, 0x6

    .line 116
    .restart local v1    # "type":I
    goto :goto_7b

    .line 101
    .end local v1    # "type":I
    :sswitch_51
    const v1, 0xffff

    .line 102
    .restart local v1    # "type":I
    goto :goto_7b

    .line 145
    .end local v1    # "type":I
    :sswitch_55
    const-string v0, "description"

    .line 146
    const v1, 0xffff

    .line 147
    .restart local v1    # "type":I
    goto :goto_7b

    .line 125
    .end local v1    # "type":I
    :sswitch_5b
    const-string v0, "artist"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_7b

    .line 95
    .end local v1    # "type":I
    :sswitch_61
    const v1, 0xffff

    .line 96
    .restart local v1    # "type":I
    goto :goto_7b

    .line 111
    .end local v1    # "type":I
    :sswitch_65
    const/16 v1, 0xa

    .line 112
    .restart local v1    # "type":I
    goto :goto_7b

    .line 108
    .end local v1    # "type":I
    :sswitch_68
    const/4 v1, 0x6

    .line 109
    .restart local v1    # "type":I
    goto :goto_7b

    .line 98
    .end local v1    # "type":I
    :sswitch_6a
    const v1, 0xffff

    .line 99
    .restart local v1    # "type":I
    goto :goto_7b

    .line 92
    .end local v1    # "type":I
    :sswitch_6e
    const v1, 0xffff

    .line 93
    .restart local v1    # "type":I
    goto :goto_7b

    .line 89
    .end local v1    # "type":I
    :sswitch_72
    const/16 v1, 0x8

    .line 90
    .restart local v1    # "type":I
    goto :goto_7b

    .line 86
    .end local v1    # "type":I
    :sswitch_75
    const/4 v1, 0x4

    .line 87
    .restart local v1    # "type":I
    goto :goto_7b

    .line 83
    .end local v1    # "type":I
    :sswitch_77
    const/4 v1, 0x4

    .line 84
    .restart local v1    # "type":I
    goto :goto_7b

    .line 80
    .end local v1    # "type":I
    :sswitch_79
    const/4 v1, 0x6

    .line 81
    .restart local v1    # "type":I
    nop

    .line 165
    :goto_7b
    if-eqz v0, :cond_8c

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    .line 169
    :cond_8c
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    nop

    :sswitch_data_94
    .sparse-switch
        0xdc01 -> :sswitch_79
        0xdc02 -> :sswitch_77
        0xdc03 -> :sswitch_75
        0xdc04 -> :sswitch_72
        0xdc07 -> :sswitch_6e
        0xdc09 -> :sswitch_6a
        0xdc0b -> :sswitch_68
        0xdc41 -> :sswitch_65
        0xdc44 -> :sswitch_61
        0xdc46 -> :sswitch_5b
        0xdc48 -> :sswitch_55
        0xdc4e -> :sswitch_51
        0xdc89 -> :sswitch_4d
        0xdc8b -> :sswitch_48
        0xdc8c -> :sswitch_42
        0xdc96 -> :sswitch_3c
        0xdc99 -> :sswitch_35
        0xdc9a -> :sswitch_2f
        0xdc9b -> :sswitch_29
        0xdce0 -> :sswitch_25
        0xde92 -> :sswitch_23
        0xde93 -> :sswitch_20
        0xde94 -> :sswitch_23
        0xde99 -> :sswitch_20
        0xde9a -> :sswitch_20
    .end sparse-switch
.end method

.method private native greylist-max-o format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .registers 26
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p4, "list"    # Landroid/mtp/MtpPropertyList;

    .line 180
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 181
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    .line 182
    .local v3, "id":I
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "path":Ljava/lang/String;
    iget-object v9, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v10, v9

    const/4 v2, 0x0

    move v11, v2

    :goto_14
    move-object v2, v0

    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    if-ge v11, v10, :cond_199

    aget-object v12, v9, v11

    .line 184
    .local v12, "property":Landroid/mtp/MtpPropertyGroup$Property;
    iget v0, v12, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_65

    if-nez v2, :cond_65

    .line 187
    :try_start_20
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_24} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_52

    move-object/from16 v13, p2

    :try_start_26
    invoke-static {v0, v13}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v15, v0

    .line 189
    .local v15, "uri":Landroid/net/Uri;
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v17, "_data=?"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p1

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v20}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 191
    if-eqz v2, :cond_4c

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_4b} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_4b} :catch_4e

    .line 193
    const/4 v2, 0x0

    .line 199
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_4c
    move-object v0, v2

    goto :goto_68

    .line 197
    :catch_4e
    move-exception v0

    goto :goto_55

    .line 195
    :catch_50
    move-exception v0

    goto :goto_61

    .line 197
    :catch_52
    move-exception v0

    move-object/from16 v13, p2

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :goto_55
    sget-object v4, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v5, "Mediaprovider lookup failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_68

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5e
    move-exception v0

    move-object/from16 v13, p2

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_61
    const v4, 0xa801

    return v4

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_65
    move-object/from16 v13, p2

    .line 201
    move-object v0, v2

    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    :goto_68
    iget v2, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_1a4

    .line 264
    move-object/from16 v2, p4

    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v4, :sswitch_data_1ee

    .line 275
    const-wide/16 v4, 0x0

    .line 276
    .local v4, "longValue":J
    if-eqz v0, :cond_18b

    .line 277
    iget v2, v12, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v6, v4

    goto/16 :goto_18c

    .line 256
    .end local v4    # "longValue":J
    :sswitch_81
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 257
    goto/16 :goto_195

    .line 261
    :sswitch_8d
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 262
    goto/16 :goto_195

    .line 239
    :sswitch_99
    move-object/from16 v2, p4

    const/4 v4, 0x0

    .line 240
    .local v4, "year":I
    if-eqz v0, :cond_a4

    .line 241
    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 242
    :cond_a4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0101T000000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "dateTime":Ljava/lang/String;
    iget v6, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v2, v3, v6, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 244
    goto/16 :goto_195

    .line 246
    .end local v4    # "year":I
    .end local v5    # "dateTime":Ljava/lang/String;
    :sswitch_c2
    move-object/from16 v2, p4

    const/4 v4, 0x0

    .line 247
    .local v4, "track":I
    if-eqz v0, :cond_cf

    .line 248
    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v14, v4

    goto :goto_d0

    .line 247
    :cond_cf
    move v14, v4

    .line 249
    .end local v4    # "track":I
    .local v14, "track":I
    :goto_d0
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    rem-int/lit16 v5, v14, 0x3e8

    int-to-long v6, v5

    const/4 v5, 0x4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 251
    goto/16 :goto_195

    .line 233
    .end local v14    # "track":I
    :sswitch_db
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x20

    shl-long/2addr v4, v2

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 235
    .local v6, "puid":J
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 236
    goto/16 :goto_195

    .line 227
    .end local v6    # "puid":J
    :sswitch_fb
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_10c

    const-wide/16 v6, 0x0

    goto :goto_115

    :cond_10c
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v6, v2

    .line 227
    :goto_115
    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 229
    goto/16 :goto_195

    .line 214
    :sswitch_11c
    move-object/from16 v2, p4

    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual {v2, v3, v4, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 216
    goto/16 :goto_195

    .line 209
    :sswitch_12d
    move-object/from16 v2, p4

    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 210
    goto :goto_195

    .line 224
    :sswitch_139
    move-object/from16 v2, p4

    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 225
    goto :goto_195

    .line 204
    :sswitch_147
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 205
    goto :goto_195

    .line 221
    :sswitch_153
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 222
    goto :goto_195

    .line 218
    :sswitch_162
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 219
    goto :goto_195

    .line 269
    :sswitch_171
    const-string v4, ""

    .line 270
    .local v4, "value":Ljava/lang/String;
    if-eqz v0, :cond_17b

    .line 271
    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    :cond_17b
    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 273
    goto :goto_195

    .line 266
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_181
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 267
    goto :goto_195

    .line 276
    .local v4, "longValue":J
    :cond_18b
    move-wide v6, v4

    .line 278
    .end local v4    # "longValue":J
    .local v6, "longValue":J
    :goto_18c
    iget v4, v12, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v12, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 183
    .end local v6    # "longValue":J
    .end local v12    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :goto_195
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_14

    .line 282
    .end local v0    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    :cond_199
    move-object/from16 v13, p2

    if-eqz v2, :cond_1a0

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1a0
    const/16 v0, 0x2001

    return v0

    nop

    :sswitch_data_1a4
    .sparse-switch
        0xdc01 -> :sswitch_162
        0xdc02 -> :sswitch_153
        0xdc03 -> :sswitch_147
        0xdc04 -> :sswitch_139
        0xdc07 -> :sswitch_12d
        0xdc09 -> :sswitch_11c
        0xdc0b -> :sswitch_fb
        0xdc41 -> :sswitch_db
        0xdc44 -> :sswitch_12d
        0xdc4e -> :sswitch_11c
        0xdc8b -> :sswitch_c2
        0xdc99 -> :sswitch_99
        0xdce0 -> :sswitch_12d
        0xde92 -> :sswitch_8d
        0xde93 -> :sswitch_81
        0xde94 -> :sswitch_8d
        0xde99 -> :sswitch_81
        0xde9a -> :sswitch_81
    .end sparse-switch

    :sswitch_data_1ee
    .sparse-switch
        0x0 -> :sswitch_181
        0xffff -> :sswitch_171
    .end sparse-switch
.end method

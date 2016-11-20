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
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/ContentProviderClient;
    .param p3, "volumeName"    # Ljava/lang/String;
    .param p4, "properties"    # [I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    #@5
    .line 70
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    #@7
    .line 71
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    #@9
    .line 72
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@f
    .line 74
    array-length v1, p4

    #@10
    .line 75
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    .line 76
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "_id"

    #@18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 78
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    #@1d
    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@1f
    .line 79
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@22
    .line 80
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@24
    aget v4, p4, v2

    #@26
    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    #@29
    move-result-object v4

    #@2a
    aput-object v4, v3, v2

    #@2c
    .line 79
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v1

    #@33
    .line 83
    new-array v3, v1, [Ljava/lang/String;

    #@35
    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@37
    .line 84
    const/4 v2, 0x0

    #@38
    :goto_1
    if-ge v2, v1, :cond_1

    #@3a
    .line 85
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/lang/String;

    #@42
    aput-object v3, v4, v2

    #@44
    .line 84
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_1

    #@47
    .line 68
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 93
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 185
    const/4 v1, 0x0

    #@5
    .line 186
    .local v1, "type":I
    const-string/jumbo v2, "MtpPropertyGroup"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "unsupported property "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 190
    .end local v0    # "column":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    #@21
    .line 191
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 192
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    #@26
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    add-int/lit8 v3, v3, -0x1

    #@2c
    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    #@2f
    return-object v2

    #@30
    .line 95
    .end local v1    # "type":I
    .restart local v0    # "column":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    #@33
    .line 96
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x6

    #@34
    .line 97
    .restart local v1    # "type":I
    goto :goto_0

    #@35
    .line 99
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "format"

    #@38
    .line 100
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x4

    #@39
    .line 101
    .restart local v1    # "type":I
    goto :goto_0

    #@3a
    .line 104
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_2
    const/4 v1, 0x4

    #@3b
    .line 105
    .restart local v1    # "type":I
    goto :goto_0

    #@3c
    .line 107
    .end local v1    # "type":I
    :sswitch_3
    const-string/jumbo v0, "_size"

    #@3f
    .line 108
    .local v0, "column":Ljava/lang/String;
    const/16 v1, 0x8

    #@41
    .line 109
    .restart local v1    # "type":I
    goto :goto_0

    #@42
    .line 111
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "_data"

    #@45
    .line 112
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@48
    .line 113
    .restart local v1    # "type":I
    goto :goto_0

    #@49
    .line 115
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "title"

    #@4c
    .line 116
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@4f
    .line 117
    .restart local v1    # "type":I
    goto :goto_0

    #@50
    .line 119
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "date_modified"

    #@53
    .line 120
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@56
    .line 121
    .restart local v1    # "type":I
    goto :goto_0

    #@57
    .line 123
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "date_added"

    #@5a
    .line 124
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@5d
    .line 125
    .restart local v1    # "type":I
    goto :goto_0

    #@5e
    .line 127
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "year"

    #@61
    .line 128
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@64
    .line 129
    .restart local v1    # "type":I
    goto :goto_0

    #@65
    .line 131
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v0, "parent"

    #@68
    .line 132
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x6

    #@69
    .line 133
    .restart local v1    # "type":I
    goto :goto_0

    #@6a
    .line 136
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    #@6d
    .line 137
    .local v0, "column":Ljava/lang/String;
    const/16 v1, 0xa

    #@6f
    .line 138
    .restart local v1    # "type":I
    goto :goto_0

    #@70
    .line 140
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v0, "duration"

    #@73
    .line 141
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x6

    #@74
    .line 142
    .restart local v1    # "type":I
    goto :goto_0

    #@75
    .line 144
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v0, "track"

    #@78
    .line 145
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x4

    #@79
    .line 146
    .restart local v1    # "type":I
    goto :goto_0

    #@7a
    .line 148
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v0, "_display_name"

    #@7d
    .line 149
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@80
    .line 150
    .restart local v1    # "type":I
    goto :goto_0

    #@81
    .line 152
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_e
    const v1, 0xffff

    #@84
    .line 153
    .restart local v1    # "type":I
    goto :goto_0

    #@85
    .line 155
    .end local v1    # "type":I
    :sswitch_f
    const v1, 0xffff

    #@88
    .line 156
    .restart local v1    # "type":I
    goto :goto_0

    #@89
    .line 158
    .end local v1    # "type":I
    :sswitch_10
    const-string/jumbo v0, "album_artist"

    #@8c
    .line 159
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@8f
    .line 160
    .restart local v1    # "type":I
    goto :goto_0

    #@90
    .line 163
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_11
    const v1, 0xffff

    #@93
    .line 164
    .restart local v1    # "type":I
    goto :goto_0

    #@94
    .line 166
    .end local v1    # "type":I
    :sswitch_12
    const-string/jumbo v0, "composer"

    #@97
    .line 167
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@9a
    .line 168
    .restart local v1    # "type":I
    goto :goto_0

    #@9b
    .line 170
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v0, "description"

    #@9e
    .line 171
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@a1
    .line 172
    .restart local v1    # "type":I
    goto/16 :goto_0

    #@a3
    .line 177
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_14
    const/4 v1, 0x6

    #@a4
    .line 178
    .restart local v1    # "type":I
    goto/16 :goto_0

    #@a6
    .line 182
    .end local v1    # "type":I
    :sswitch_15
    const/4 v1, 0x4

    #@a7
    .line 183
    .restart local v1    # "type":I
    goto/16 :goto_0

    #@a9
    .line 194
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    #@ab
    const/4 v3, -0x1

    #@ac
    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    #@af
    return-object v2

    #@b0
    .line 93
    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde92 -> :sswitch_15
        0xde93 -> :sswitch_14
        0xde94 -> :sswitch_15
        0xde99 -> :sswitch_14
        0xde9a -> :sswitch_14
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    const/4 v2, 0x0

    #@1
    .line 283
    .local v2, "start":I
    const/16 v3, 0x2f

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 284
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@9
    .line 285
    add-int/lit8 v2, v1, 0x1

    #@b
    .line 287
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    .line 288
    .local v0, "end":I
    sub-int v3, v0, v2

    #@11
    const/16 v4, 0xff

    #@13
    if-le v3, v4, :cond_1

    #@15
    .line 289
    add-int/lit16 v0, v2, 0xff

    #@17
    .line 291
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 220
    const/4 v7, 0x0

    #@2
    .line 222
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    #@6
    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    .line 223
    const/4 v2, 0x2

    #@b
    new-array v2, v2, [Ljava/lang/String;

    #@d
    const-string/jumbo v3, "_id"

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    const/4 v3, 0x1

    #@14
    aput-object p2, v2, v3

    #@16
    .line 224
    const-string/jumbo v3, "_id=?"

    #@19
    const/4 v4, 0x1

    #@1a
    new-array v4, v4, [Ljava/lang/String;

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    const/4 v6, 0x0

    #@21
    aput-object v5, v4, v6

    #@23
    const/4 v5, 0x0

    #@24
    const/4 v6, 0x0

    #@25
    .line 222
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@28
    move-result-object v7

    #@29
    .line 225
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@2b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 226
    const/4 v0, 0x1

    #@32
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result-object v0

    #@36
    .line 233
    if-eqz v7, :cond_0

    #@38
    .line 234
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@3b
    .line 226
    :cond_0
    return-object v0

    #@3c
    .line 228
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 233
    if-eqz v7, :cond_2

    #@41
    .line 234
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@44
    .line 228
    :cond_2
    return-object v0

    #@45
    .line 230
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@46
    .line 233
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_3

    #@48
    .line 234
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4b
    .line 231
    :cond_3
    return-object v9

    #@4c
    .line 232
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@4d
    .line 233
    if-eqz v7, :cond_4

    #@4f
    .line 234
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@52
    .line 232
    :cond_4
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 240
    const/4 v7, 0x0

    #@2
    .line 242
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    #@4
    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 243
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    #@a
    .line 244
    const/4 v2, 0x2

    #@b
    new-array v2, v2, [Ljava/lang/String;

    #@d
    const-string/jumbo v3, "_id"

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    const-string/jumbo v3, "name"

    #@16
    const/4 v4, 0x1

    #@17
    aput-object v3, v2, v4

    #@19
    .line 245
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x0

    #@1b
    const/4 v5, 0x0

    #@1c
    const/4 v6, 0x0

    #@1d
    .line 243
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@20
    move-result-object v7

    #@21
    .line 246
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@23
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 247
    const/4 v0, 0x1

    #@2a
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    .line 255
    if-eqz v7, :cond_0

    #@30
    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@33
    .line 247
    :cond_0
    return-object v0

    #@34
    .line 249
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 255
    if-eqz v7, :cond_2

    #@39
    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@3c
    .line 249
    :cond_2
    return-object v0

    #@3d
    .line 251
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@3e
    .line 252
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "MtpPropertyGroup"

    #@41
    const-string/jumbo v2, "queryGenre exception"

    #@44
    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 255
    if-eqz v7, :cond_3

    #@49
    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4c
    .line 253
    :cond_3
    return-object v9

    #@4d
    .line 254
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@4e
    .line 255
    if-eqz v7, :cond_4

    #@50
    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@53
    .line 254
    :cond_4
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 262
    const/4 v7, 0x0

    #@2
    .line 265
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@6
    .line 266
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/String;

    #@9
    const-string/jumbo v3, "_id"

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v3, v2, v4

    #@f
    const/4 v3, 0x1

    #@10
    aput-object p2, v2, v3

    #@12
    .line 267
    const-string/jumbo v3, "_id=?"

    #@15
    const/4 v4, 0x1

    #@16
    new-array v4, v4, [Ljava/lang/String;

    #@18
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    const/4 v6, 0x0

    #@1d
    aput-object v5, v4, v6

    #@1f
    const/4 v5, 0x0

    #@20
    const/4 v6, 0x0

    #@21
    .line 265
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@24
    move-result-object v7

    #@25
    .line 268
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@27
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 269
    new-instance v0, Ljava/lang/Long;

    #@2f
    const/4 v1, 0x1

    #@30
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    #@33
    move-result-wide v2

    #@34
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 273
    if-eqz v7, :cond_0

    #@39
    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@3c
    .line 269
    :cond_0
    return-object v0

    #@3d
    .line 273
    :cond_1
    if-eqz v7, :cond_2

    #@3f
    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@42
    .line 277
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v9

    #@43
    .line 271
    :catch_0
    move-exception v8

    #@44
    .line 273
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_2

    #@46
    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@49
    goto :goto_0

    #@4a
    .line 272
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@4b
    .line 273
    if-eqz v7, :cond_3

    #@4d
    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@50
    .line 272
    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 199
    const/4 v7, 0x0

    #@2
    .line 202
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@6
    .line 203
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/String;

    #@9
    const-string/jumbo v3, "_id"

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v3, v2, v4

    #@f
    const/4 v3, 0x1

    #@10
    aput-object p2, v2, v3

    #@12
    .line 204
    const-string/jumbo v3, "_id=?"

    #@15
    const/4 v4, 0x1

    #@16
    new-array v4, v4, [Ljava/lang/String;

    #@18
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    const/4 v6, 0x0

    #@1d
    aput-object v5, v4, v6

    #@1f
    const/4 v5, 0x0

    #@20
    const/4 v6, 0x0

    #@21
    .line 202
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@24
    move-result-object v7

    #@25
    .line 205
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@27
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 206
    const/4 v0, 0x1

    #@2e
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result-object v0

    #@32
    .line 213
    if-eqz v7, :cond_0

    #@34
    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@37
    .line 206
    :cond_0
    return-object v0

    #@38
    .line 208
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 213
    if-eqz v7, :cond_2

    #@3d
    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@40
    .line 208
    :cond_2
    return-object v0

    #@41
    .line 210
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@42
    .line 213
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_3

    #@44
    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@47
    .line 211
    :cond_3
    return-object v9

    #@48
    .line 212
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@49
    .line 213
    if-eqz v7, :cond_4

    #@4b
    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4e
    .line 212
    :cond_4
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 32
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    #@0
    .prologue
    .line 296
    const/4 v2, 0x1

    #@1
    move/from16 v0, p3

    #@3
    if-le v0, v2, :cond_0

    #@5
    .line 299
    new-instance v2, Landroid/mtp/MtpPropertyList;

    #@7
    const/4 v3, 0x0

    #@8
    const v4, 0xa808

    #@b
    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    #@e
    return-object v2

    #@f
    .line 304
    :cond_0
    if-nez p2, :cond_5

    #@11
    .line 305
    const/4 v2, -0x1

    #@12
    move/from16 v0, p1

    #@14
    if-ne v0, v2, :cond_3

    #@16
    .line 307
    const/4 v5, 0x0

    #@17
    .line 308
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x0

    #@18
    .line 332
    .end local v5    # "where":Ljava/lang/String;
    :goto_0
    const/16 v20, 0x0

    #@1a
    .line 335
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_1

    #@1c
    const/4 v2, -0x1

    #@1d
    move/from16 v0, p1

    #@1f
    if-ne v0, v2, :cond_8

    #@21
    .line 336
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@2d
    const/4 v7, 0x0

    #@2e
    const/4 v8, 0x0

    #@2f
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@32
    move-result-object v20

    #@33
    .line 337
    .local v20, "c":Landroid/database/Cursor;
    if-nez v20, :cond_9

    #@35
    .line 338
    new-instance v2, Landroid/mtp/MtpPropertyList;

    #@37
    const/4 v3, 0x0

    #@38
    const/16 v4, 0x2009

    #@3a
    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 461
    if-eqz v20, :cond_2

    #@3f
    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@42
    .line 338
    :cond_2
    return-object v2

    #@43
    .line 310
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    #@44
    new-array v6, v2, [Ljava/lang/String;

    #@46
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    const/4 v3, 0x0

    #@4b
    aput-object v2, v6, v3

    #@4d
    .line 311
    .local v6, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    #@4e
    move/from16 v0, p3

    #@50
    if-ne v0, v2, :cond_4

    #@52
    .line 312
    const-string/jumbo v5, "parent=?"

    #@55
    .local v5, "where":Ljava/lang/String;
    goto :goto_0

    #@56
    .line 314
    .end local v5    # "where":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "_id=?"

    #@59
    .restart local v5    # "where":Ljava/lang/String;
    goto :goto_0

    #@5a
    .line 318
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v2, -0x1

    #@5b
    move/from16 v0, p1

    #@5d
    if-ne v0, v2, :cond_6

    #@5f
    .line 320
    const-string/jumbo v5, "format=?"

    #@62
    .line 321
    .restart local v5    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    #@63
    new-array v6, v2, [Ljava/lang/String;

    #@65
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    const/4 v3, 0x0

    #@6a
    aput-object v2, v6, v3

    #@6c
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@6d
    .line 323
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    #@6e
    new-array v6, v2, [Ljava/lang/String;

    #@70
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    const/4 v3, 0x0

    #@75
    aput-object v2, v6, v3

    #@77
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    const/4 v3, 0x1

    #@7c
    aput-object v2, v6, v3

    #@7e
    .line 324
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    #@7f
    move/from16 v0, p3

    #@81
    if-ne v0, v2, :cond_7

    #@83
    .line 325
    const-string/jumbo v5, "parent=? AND format=?"

    #@86
    .restart local v5    # "where":Ljava/lang/String;
    goto :goto_0

    #@87
    .line 327
    .end local v5    # "where":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "_id=? AND format=?"

    #@8a
    .restart local v5    # "where":Ljava/lang/String;
    goto :goto_0

    #@8b
    .line 335
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .local v20, "c":Landroid/database/Cursor;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    #@8d
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@8f
    array-length v2, v2

    #@90
    const/4 v3, 0x1

    #@91
    if-gt v2, v3, :cond_1

    #@93
    .line 342
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_9
    if-nez v20, :cond_b

    #@95
    const/16 v22, 0x1

    #@97
    .line 343
    .local v22, "count":I
    :goto_1
    new-instance v8, Landroid/mtp/MtpPropertyList;

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@9d
    array-length v2, v2

    #@9e
    mul-int v2, v2, v22

    #@a0
    .line 344
    const/16 v3, 0x2001

    #@a2
    .line 343
    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    #@a5
    .line 347
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v27, 0x0

    #@a7
    .local v27, "objectIndex":I
    :goto_2
    move/from16 v0, v27

    #@a9
    move/from16 v1, v22

    #@ab
    if-ge v0, v1, :cond_16

    #@ad
    .line 348
    if-eqz v20, :cond_a

    #@af
    .line 349
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    #@b2
    .line 350
    const/4 v2, 0x0

    #@b3
    move-object/from16 v0, v20

    #@b5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    #@b8
    move-result-wide v2

    #@b9
    long-to-int v0, v2

    #@ba
    move/from16 p1, v0

    #@bc
    .line 354
    :cond_a
    const/16 v29, 0x0

    #@be
    .local v29, "propertyIndex":I
    :goto_3
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@c2
    array-length v2, v2

    #@c3
    move/from16 v0, v29

    #@c5
    if-ge v0, v2, :cond_15

    #@c7
    .line 355
    move-object/from16 v0, p0

    #@c9
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@cb
    aget-object v28, v2, v29

    #@cd
    .line 356
    .local v28, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v28

    #@cf
    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    #@d1
    .line 357
    .local v10, "propertyCode":I
    move-object/from16 v0, v28

    #@d3
    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    #@d5
    move/from16 v21, v0

    #@d7
    .line 360
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    #@da
    .line 444
    move-object/from16 v0, v28

    #@dc
    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@de
    const v3, 0xffff

    #@e1
    if-ne v2, v3, :cond_13

    #@e3
    .line 445
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    move/from16 v0, p1

    #@e9
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@ec
    .line 354
    :goto_4
    add-int/lit8 v29, v29, 0x1

    #@ee
    goto :goto_3

    #@ef
    .line 342
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :cond_b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    #@f2
    move-result v22

    #@f3
    .restart local v22    # "count":I
    goto :goto_1

    #@f4
    .line 363
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_0
    const-wide/16 v12, 0x0

    #@f6
    const/4 v11, 0x4

    #@f7
    move/from16 v9, p1

    #@f9
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fc
    goto :goto_4

    #@fd
    .line 458
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catch_0
    move-exception v24

    #@fe
    .line 459
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Landroid/mtp/MtpPropertyList;

    #@100
    const/4 v3, 0x0

    #@101
    const/16 v4, 0x2002

    #@103
    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@106
    .line 461
    if-eqz v20, :cond_c

    #@108
    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@10b
    .line 459
    :cond_c
    return-object v2

    #@10c
    .line 367
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_1
    :try_start_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@10f
    move-result-object v30

    #@110
    .line 368
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_e

    #@112
    .line 369
    invoke-static/range {v30 .. v30}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    #@115
    move-result-object v2

    #@116
    move/from16 v0, p1

    #@118
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11b
    goto :goto_4

    #@11c
    .line 460
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    .end local v30    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@11d
    .line 461
    if-eqz v20, :cond_d

    #@11f
    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@122
    .line 460
    :cond_d
    throw v2

    #@123
    .line 371
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    .restart local v30    # "value":Ljava/lang/String;
    :cond_e
    const/16 v2, 0x2009

    #@125
    :try_start_4
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    #@128
    goto :goto_4

    #@129
    .line 376
    .end local v30    # "value":Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@12c
    move-result-object v26

    #@12d
    .line 378
    .local v26, "name":Ljava/lang/String;
    if-nez v26, :cond_f

    #@12f
    .line 379
    const-string/jumbo v2, "name"

    #@132
    move-object/from16 v0, p0

    #@134
    move/from16 v1, p1

    #@136
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    #@139
    move-result-object v26

    #@13a
    .line 382
    :cond_f
    if-nez v26, :cond_10

    #@13c
    .line 383
    const-string/jumbo v2, "_data"

    #@13f
    move-object/from16 v0, p0

    #@141
    move/from16 v1, p1

    #@143
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    #@146
    move-result-object v26

    #@147
    .line 384
    if-eqz v26, :cond_10

    #@149
    .line 385
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    #@14c
    move-result-object v26

    #@14d
    .line 388
    :cond_10
    if-eqz v26, :cond_11

    #@14f
    .line 389
    move/from16 v0, p1

    #@151
    move-object/from16 v1, v26

    #@153
    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@156
    goto :goto_4

    #@157
    .line 391
    :cond_11
    const/16 v2, 0x2009

    #@159
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    #@15c
    goto :goto_4

    #@15d
    .line 397
    .end local v26    # "name":Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    #@160
    move-result v2

    #@161
    int-to-long v2, v2

    #@162
    move-object/from16 v0, p0

    #@164
    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    #@167
    move-result-object v2

    #@168
    move/from16 v0, p1

    #@16a
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@16d
    goto/16 :goto_4

    #@16f
    .line 401
    :sswitch_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    #@172
    move-result v31

    #@173
    .line 402
    .local v31, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17b
    move-result-object v3

    #@17c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v2

    #@180
    const-string/jumbo v3, "0101T000000"

    #@183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v2

    #@187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v23

    #@18b
    .line 403
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    #@18d
    move-object/from16 v1, v23

    #@18f
    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@192
    goto/16 :goto_4

    #@194
    .line 407
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v31    # "year":I
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    #@197
    move-result-wide v12

    #@198
    .line 408
    .local v12, "puid":J
    const/16 v2, 0x20

    #@19a
    shl-long/2addr v12, v2

    #@19b
    .line 409
    move/from16 v0, p1

    #@19d
    int-to-long v2, v0

    #@19e
    add-long/2addr v12, v2

    #@19f
    .line 410
    const/16 v11, 0xa

    #@1a1
    move/from16 v9, p1

    #@1a3
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@1a6
    goto/16 :goto_4

    #@1a8
    .line 414
    .end local v12    # "puid":J
    :sswitch_6
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    #@1ab
    move-result v2

    #@1ac
    rem-int/lit16 v2, v2, 0x3e8

    #@1ae
    int-to-long v0, v2

    #@1af
    move-wide/from16 v18, v0

    #@1b1
    .line 413
    const/16 v17, 0x4

    #@1b3
    move-object v14, v8

    #@1b4
    move/from16 v15, p1

    #@1b6
    move/from16 v16, v10

    #@1b8
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@1bb
    goto/16 :goto_4

    #@1bd
    .line 418
    :sswitch_7
    const-string/jumbo v2, "artist"

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    move/from16 v1, p1

    #@1c4
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    #@1c7
    move-result-object v2

    #@1c8
    .line 417
    move/from16 v0, p1

    #@1ca
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@1cd
    goto/16 :goto_4

    #@1cf
    .line 422
    :sswitch_8
    const-string/jumbo v2, "album"

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    move/from16 v1, p1

    #@1d6
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    #@1d9
    move-result-object v2

    #@1da
    .line 421
    move/from16 v0, p1

    #@1dc
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@1df
    goto/16 :goto_4

    #@1e1
    .line 425
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    #@1e4
    move-result-object v25

    #@1e5
    .line 426
    .local v25, "genre":Ljava/lang/String;
    if-eqz v25, :cond_12

    #@1e7
    .line 427
    move/from16 v0, p1

    #@1e9
    move-object/from16 v1, v25

    #@1eb
    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@1ee
    goto/16 :goto_4

    #@1f0
    .line 429
    :cond_12
    const/16 v2, 0x2009

    #@1f2
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    #@1f5
    goto/16 :goto_4

    #@1f7
    .line 436
    .end local v25    # "genre":Ljava/lang/String;
    :sswitch_a
    const-wide/16 v18, 0x0

    #@1f9
    const/16 v17, 0x6

    #@1fb
    move-object v14, v8

    #@1fc
    move/from16 v15, p1

    #@1fe
    move/from16 v16, v10

    #@200
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@203
    goto/16 :goto_4

    #@205
    .line 441
    :sswitch_b
    const-wide/16 v18, 0x0

    #@207
    const/16 v17, 0x4

    #@209
    move-object v14, v8

    #@20a
    move/from16 v15, p1

    #@20c
    move/from16 v16, v10

    #@20e
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@211
    goto/16 :goto_4

    #@213
    .line 446
    :cond_13
    move-object/from16 v0, v28

    #@215
    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@217
    if-nez v2, :cond_14

    #@219
    .line 447
    move-object/from16 v0, v28

    #@21b
    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@21d
    move/from16 v17, v0

    #@21f
    const-wide/16 v18, 0x0

    #@221
    move-object v14, v8

    #@222
    move/from16 v15, p1

    #@224
    move/from16 v16, v10

    #@226
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@229
    goto/16 :goto_4

    #@22b
    .line 449
    :cond_14
    move-object/from16 v0, v28

    #@22d
    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@22f
    move/from16 v17, v0

    #@231
    .line 450
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    #@234
    move-result-wide v18

    #@235
    move-object v14, v8

    #@236
    move/from16 v15, p1

    #@238
    move/from16 v16, v10

    #@23a
    .line 449
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@23d
    goto/16 :goto_4

    #@23f
    .line 347
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_15
    add-int/lit8 v27, v27, 0x1

    #@241
    goto/16 :goto_2

    #@243
    .line 461
    .end local v29    # "propertyIndex":I
    :cond_16
    if-eqz v20, :cond_17

    #@245
    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@248
    .line 457
    :cond_17
    return-object v8

    #@249
    .line 360
    nop

    #@24a
    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_0
        0xdc07 -> :sswitch_1
        0xdc09 -> :sswitch_3
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_7
        0xdc4e -> :sswitch_3
        0xdc8b -> :sswitch_6
        0xdc8c -> :sswitch_9
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_8
        0xde92 -> :sswitch_b
        0xde93 -> :sswitch_a
        0xde94 -> :sswitch_b
        0xde99 -> :sswitch_a
        0xde9a -> :sswitch_a
    .end sparse-switch
.end method

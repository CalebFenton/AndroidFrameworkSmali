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

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    #@5
    .line 71
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    #@7
    .line 72
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    #@9
    .line 73
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    #@b
    .line 74
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@11
    .line 76
    array-length v1, p5

    #@12
    .line 77
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@17
    .line 78
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "_id"

    #@1a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 80
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    #@1f
    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@21
    .line 81
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@24
    .line 82
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@26
    aget v4, p5, v2

    #@28
    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    #@2b
    move-result-object v4

    #@2c
    aput-object v4, v3, v2

    #@2e
    .line 81
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v1

    #@35
    .line 85
    new-array v3, v1, [Ljava/lang/String;

    #@37
    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@39
    .line 86
    const/4 v2, 0x0

    #@3a
    :goto_1
    if-ge v2, v1, :cond_1

    #@3c
    .line 87
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@3e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Ljava/lang/String;

    #@44
    aput-object v3, v4, v2

    #@46
    .line 86
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_1

    #@49
    .line 69
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
    .line 92
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 95
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 187
    const/4 v1, 0x0

    #@5
    .line 188
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
    .line 192
    .end local v0    # "column":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    #@21
    .line 193
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 194
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
    .line 97
    .end local v1    # "type":I
    .restart local v0    # "column":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    #@33
    .line 98
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x6

    #@34
    .line 99
    .restart local v1    # "type":I
    goto :goto_0

    #@35
    .line 101
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "format"

    #@38
    .line 102
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x4

    #@39
    .line 103
    .restart local v1    # "type":I
    goto :goto_0

    #@3a
    .line 106
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_2
    const/4 v1, 0x4

    #@3b
    .line 107
    .restart local v1    # "type":I
    goto :goto_0

    #@3c
    .line 109
    .end local v1    # "type":I
    :sswitch_3
    const-string/jumbo v0, "_size"

    #@3f
    .line 110
    .local v0, "column":Ljava/lang/String;
    const/16 v1, 0x8

    #@41
    .line 111
    .restart local v1    # "type":I
    goto :goto_0

    #@42
    .line 113
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "_data"

    #@45
    .line 114
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@48
    .line 115
    .restart local v1    # "type":I
    goto :goto_0

    #@49
    .line 117
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "title"

    #@4c
    .line 118
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@4f
    .line 119
    .restart local v1    # "type":I
    goto :goto_0

    #@50
    .line 121
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "date_modified"

    #@53
    .line 122
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@56
    .line 123
    .restart local v1    # "type":I
    goto :goto_0

    #@57
    .line 125
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "date_added"

    #@5a
    .line 126
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@5d
    .line 127
    .restart local v1    # "type":I
    goto :goto_0

    #@5e
    .line 129
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "year"

    #@61
    .line 130
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@64
    .line 131
    .restart local v1    # "type":I
    goto :goto_0

    #@65
    .line 133
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v0, "parent"

    #@68
    .line 134
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x6

    #@69
    .line 135
    .restart local v1    # "type":I
    goto :goto_0

    #@6a
    .line 138
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    #@6d
    .line 139
    .local v0, "column":Ljava/lang/String;
    const/16 v1, 0xa

    #@6f
    .line 140
    .restart local v1    # "type":I
    goto :goto_0

    #@70
    .line 142
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v0, "duration"

    #@73
    .line 143
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x6

    #@74
    .line 144
    .restart local v1    # "type":I
    goto :goto_0

    #@75
    .line 146
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v0, "track"

    #@78
    .line 147
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x4

    #@79
    .line 148
    .restart local v1    # "type":I
    goto :goto_0

    #@7a
    .line 150
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v0, "_display_name"

    #@7d
    .line 151
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@80
    .line 152
    .restart local v1    # "type":I
    goto :goto_0

    #@81
    .line 154
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_e
    const v1, 0xffff

    #@84
    .line 155
    .restart local v1    # "type":I
    goto :goto_0

    #@85
    .line 157
    .end local v1    # "type":I
    :sswitch_f
    const v1, 0xffff

    #@88
    .line 158
    .restart local v1    # "type":I
    goto :goto_0

    #@89
    .line 160
    .end local v1    # "type":I
    :sswitch_10
    const-string/jumbo v0, "album_artist"

    #@8c
    .line 161
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@8f
    .line 162
    .restart local v1    # "type":I
    goto :goto_0

    #@90
    .line 165
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_11
    const v1, 0xffff

    #@93
    .line 166
    .restart local v1    # "type":I
    goto :goto_0

    #@94
    .line 168
    .end local v1    # "type":I
    :sswitch_12
    const-string/jumbo v0, "composer"

    #@97
    .line 169
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@9a
    .line 170
    .restart local v1    # "type":I
    goto :goto_0

    #@9b
    .line 172
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v0, "description"

    #@9e
    .line 173
    .local v0, "column":Ljava/lang/String;
    const v1, 0xffff

    #@a1
    .line 174
    .restart local v1    # "type":I
    goto/16 :goto_0

    #@a3
    .line 179
    .end local v1    # "type":I
    .local v0, "column":Ljava/lang/String;
    :sswitch_14
    const/4 v1, 0x6

    #@a4
    .line 180
    .restart local v1    # "type":I
    goto/16 :goto_0

    #@a6
    .line 184
    .end local v1    # "type":I
    :sswitch_15
    const/4 v1, 0x4

    #@a7
    .line 185
    .restart local v1    # "type":I
    goto/16 :goto_0

    #@a9
    .line 196
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
    .line 95
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
    .line 284
    const/4 v2, 0x0

    #@1
    .line 285
    .local v2, "start":I
    const/16 v3, 0x2f

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 286
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@9
    .line 287
    add-int/lit8 v2, v1, 0x1

    #@b
    .line 289
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    .line 290
    .local v0, "end":I
    sub-int v3, v0, v2

    #@11
    const/16 v4, 0xff

    #@13
    if-le v3, v4, :cond_1

    #@15
    .line 291
    add-int/lit16 v0, v2, 0xff

    #@17
    .line 293
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 222
    const/4 v8, 0x0

    #@2
    .line 224
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    #@8
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v2

    #@c
    .line 225
    const/4 v3, 0x2

    #@d
    new-array v3, v3, [Ljava/lang/String;

    #@f
    const-string/jumbo v4, "_id"

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    const/4 v4, 0x1

    #@16
    aput-object p2, v3, v4

    #@18
    .line 226
    const-string/jumbo v4, "_id=?"

    #@1b
    const/4 v5, 0x1

    #@1c
    new-array v5, v5, [Ljava/lang/String;

    #@1e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    const/4 v7, 0x0

    #@23
    aput-object v6, v5, v7

    #@25
    const/4 v6, 0x0

    #@26
    const/4 v7, 0x0

    #@27
    .line 224
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@2a
    move-result-object v8

    #@2b
    .line 227
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    #@2d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 228
    const/4 v0, 0x1

    #@34
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result-object v0

    #@38
    .line 235
    if-eqz v8, :cond_0

    #@3a
    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3d
    .line 228
    :cond_0
    return-object v0

    #@3e
    .line 230
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 235
    if-eqz v8, :cond_2

    #@43
    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@46
    .line 230
    :cond_2
    return-object v0

    #@47
    .line 232
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@48
    .line 235
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    #@4a
    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4d
    .line 233
    :cond_3
    return-object v10

    #@4e
    .line 234
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@4f
    .line 235
    if-eqz v8, :cond_4

    #@51
    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@54
    .line 234
    :cond_4
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 242
    const/4 v8, 0x0

    #@2
    .line 244
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    #@4
    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    #@7
    move-result-object v2

    #@8
    .line 245
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    #@a
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    #@c
    .line 246
    const/4 v3, 0x2

    #@d
    new-array v3, v3, [Ljava/lang/String;

    #@f
    const-string/jumbo v4, "_id"

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    const-string/jumbo v4, "name"

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v4, v3, v5

    #@1b
    .line 247
    const/4 v4, 0x0

    #@1c
    const/4 v5, 0x0

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    .line 245
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@22
    move-result-object v8

    #@23
    .line 248
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    #@25
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 249
    const/4 v0, 0x1

    #@2c
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v0

    #@30
    .line 257
    if-eqz v8, :cond_0

    #@32
    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@35
    .line 249
    :cond_0
    return-object v0

    #@36
    .line 251
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 257
    if-eqz v8, :cond_2

    #@3b
    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3e
    .line 251
    :cond_2
    return-object v0

    #@3f
    .line 253
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@40
    .line 254
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "MtpPropertyGroup"

    #@43
    const-string/jumbo v1, "queryGenre exception"

    #@46
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 257
    if-eqz v8, :cond_3

    #@4b
    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4e
    .line 255
    :cond_3
    return-object v10

    #@4f
    .line 256
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@50
    .line 257
    if-eqz v8, :cond_4

    #@52
    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@55
    .line 256
    :cond_4
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 264
    const/4 v8, 0x0

    #@2
    .line 267
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@8
    .line 268
    const/4 v3, 0x2

    #@9
    new-array v3, v3, [Ljava/lang/String;

    #@b
    const-string/jumbo v4, "_id"

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    const/4 v4, 0x1

    #@12
    aput-object p2, v3, v4

    #@14
    .line 269
    const-string/jumbo v4, "_id=?"

    #@17
    const/4 v5, 0x1

    #@18
    new-array v5, v5, [Ljava/lang/String;

    #@1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    const/4 v7, 0x0

    #@1f
    aput-object v6, v5, v7

    #@21
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    .line 267
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@26
    move-result-object v8

    #@27
    .line 270
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    #@29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 271
    new-instance v0, Ljava/lang/Long;

    #@31
    const/4 v1, 0x1

    #@32
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    #@35
    move-result-wide v2

    #@36
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 275
    if-eqz v8, :cond_0

    #@3b
    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3e
    .line 271
    :cond_0
    return-object v0

    #@3f
    .line 275
    :cond_1
    if-eqz v8, :cond_2

    #@41
    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@44
    .line 279
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v10

    #@45
    .line 273
    :catch_0
    move-exception v9

    #@46
    .line 275
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    #@48
    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4b
    goto :goto_0

    #@4c
    .line 274
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@4d
    .line 275
    if-eqz v8, :cond_3

    #@4f
    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@52
    .line 274
    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 201
    const/4 v8, 0x0

    #@2
    .line 204
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@8
    .line 205
    const/4 v3, 0x2

    #@9
    new-array v3, v3, [Ljava/lang/String;

    #@b
    const-string/jumbo v4, "_id"

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    const/4 v4, 0x1

    #@12
    aput-object p2, v3, v4

    #@14
    .line 206
    const-string/jumbo v4, "_id=?"

    #@17
    const/4 v5, 0x1

    #@18
    new-array v5, v5, [Ljava/lang/String;

    #@1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    const/4 v7, 0x0

    #@1f
    aput-object v6, v5, v7

    #@21
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    .line 204
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@26
    move-result-object v8

    #@27
    .line 207
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    #@29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 208
    const/4 v0, 0x1

    #@30
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result-object v0

    #@34
    .line 215
    if-eqz v8, :cond_0

    #@36
    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@39
    .line 208
    :cond_0
    return-object v0

    #@3a
    .line 210
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 215
    if-eqz v8, :cond_2

    #@3f
    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@42
    .line 210
    :cond_2
    return-object v0

    #@43
    .line 212
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@44
    .line 215
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    #@46
    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@49
    .line 213
    :cond_3
    return-object v10

    #@4a
    .line 214
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@4b
    .line 215
    if-eqz v8, :cond_4

    #@4d
    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@50
    .line 214
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
    .line 298
    const/4 v2, 0x1

    #@1
    move/from16 v0, p3

    #@3
    if-le v0, v2, :cond_0

    #@5
    .line 301
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
    .line 306
    :cond_0
    if-nez p2, :cond_5

    #@11
    .line 307
    const/4 v2, -0x1

    #@12
    move/from16 v0, p1

    #@14
    if-ne v0, v2, :cond_3

    #@16
    .line 309
    const/4 v6, 0x0

    #@17
    .line 310
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    #@18
    .line 334
    .end local v6    # "where":Ljava/lang/String;
    :goto_0
    const/16 v20, 0x0

    #@1a
    .line 337
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_1

    #@1c
    const/4 v2, -0x1

    #@1d
    move/from16 v0, p1

    #@1f
    if-ne v0, v2, :cond_8

    #@21
    .line 338
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@31
    const/4 v8, 0x0

    #@32
    const/4 v9, 0x0

    #@33
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@36
    move-result-object v20

    #@37
    .line 339
    .local v20, "c":Landroid/database/Cursor;
    if-nez v20, :cond_9

    #@39
    .line 340
    new-instance v2, Landroid/mtp/MtpPropertyList;

    #@3b
    const/4 v3, 0x0

    #@3c
    const/16 v4, 0x2009

    #@3e
    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 463
    if-eqz v20, :cond_2

    #@43
    .line 464
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@46
    .line 340
    :cond_2
    return-object v2

    #@47
    .line 312
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    #@48
    new-array v7, v2, [Ljava/lang/String;

    #@4a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    const/4 v3, 0x0

    #@4f
    aput-object v2, v7, v3

    #@51
    .line 313
    .local v7, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    #@52
    move/from16 v0, p3

    #@54
    if-ne v0, v2, :cond_4

    #@56
    .line 314
    const-string/jumbo v6, "parent=?"

    #@59
    .local v6, "where":Ljava/lang/String;
    goto :goto_0

    #@5a
    .line 316
    .end local v6    # "where":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "_id=?"

    #@5d
    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    #@5e
    .line 320
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v2, -0x1

    #@5f
    move/from16 v0, p1

    #@61
    if-ne v0, v2, :cond_6

    #@63
    .line 322
    const-string/jumbo v6, "format=?"

    #@66
    .line 323
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    #@67
    new-array v7, v2, [Ljava/lang/String;

    #@69
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    const/4 v3, 0x0

    #@6e
    aput-object v2, v7, v3

    #@70
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@71
    .line 325
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    #@72
    new-array v7, v2, [Ljava/lang/String;

    #@74
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    const/4 v3, 0x0

    #@79
    aput-object v2, v7, v3

    #@7b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    const/4 v3, 0x1

    #@80
    aput-object v2, v7, v3

    #@82
    .line 326
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    #@83
    move/from16 v0, p3

    #@85
    if-ne v0, v2, :cond_7

    #@87
    .line 327
    const-string/jumbo v6, "parent=? AND format=?"

    #@8a
    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    #@8b
    .line 329
    .end local v6    # "where":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "_id=? AND format=?"

    #@8e
    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    #@8f
    .line 337
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .local v20, "c":Landroid/database/Cursor;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    #@93
    array-length v2, v2

    #@94
    const/4 v3, 0x1

    #@95
    if-gt v2, v3, :cond_1

    #@97
    .line 344
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_9
    if-nez v20, :cond_b

    #@99
    const/16 v22, 0x1

    #@9b
    .line 345
    .local v22, "count":I
    :goto_1
    new-instance v8, Landroid/mtp/MtpPropertyList;

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@a1
    array-length v2, v2

    #@a2
    mul-int v2, v2, v22

    #@a4
    .line 346
    const/16 v3, 0x2001

    #@a6
    .line 345
    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    #@a9
    .line 349
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v27, 0x0

    #@ab
    .local v27, "objectIndex":I
    :goto_2
    move/from16 v0, v27

    #@ad
    move/from16 v1, v22

    #@af
    if-ge v0, v1, :cond_16

    #@b1
    .line 350
    if-eqz v20, :cond_a

    #@b3
    .line 351
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    #@b6
    .line 352
    const/4 v2, 0x0

    #@b7
    move-object/from16 v0, v20

    #@b9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    #@bc
    move-result-wide v2

    #@bd
    long-to-int v0, v2

    #@be
    move/from16 p1, v0

    #@c0
    .line 356
    :cond_a
    const/16 v29, 0x0

    #@c2
    .local v29, "propertyIndex":I
    :goto_3
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@c6
    array-length v2, v2

    #@c7
    move/from16 v0, v29

    #@c9
    if-ge v0, v2, :cond_15

    #@cb
    .line 357
    move-object/from16 v0, p0

    #@cd
    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    #@cf
    aget-object v28, v2, v29

    #@d1
    .line 358
    .local v28, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v28

    #@d3
    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    #@d5
    .line 359
    .local v10, "propertyCode":I
    move-object/from16 v0, v28

    #@d7
    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    #@d9
    move/from16 v21, v0

    #@db
    .line 362
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    #@de
    .line 446
    move-object/from16 v0, v28

    #@e0
    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@e2
    const v3, 0xffff

    #@e5
    if-ne v2, v3, :cond_13

    #@e7
    .line 447
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@ea
    move-result-object v2

    #@eb
    move/from16 v0, p1

    #@ed
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@f0
    .line 356
    :goto_4
    add-int/lit8 v29, v29, 0x1

    #@f2
    goto :goto_3

    #@f3
    .line 344
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :cond_b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    #@f6
    move-result v22

    #@f7
    .restart local v22    # "count":I
    goto :goto_1

    #@f8
    .line 365
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_0
    const-wide/16 v12, 0x0

    #@fa
    const/4 v11, 0x4

    #@fb
    move/from16 v9, p1

    #@fd
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@100
    goto :goto_4

    #@101
    .line 460
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catch_0
    move-exception v24

    #@102
    .line 461
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Landroid/mtp/MtpPropertyList;

    #@104
    const/4 v3, 0x0

    #@105
    const/16 v4, 0x2002

    #@107
    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10a
    .line 463
    if-eqz v20, :cond_c

    #@10c
    .line 464
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@10f
    .line 461
    :cond_c
    return-object v2

    #@110
    .line 369
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

    #@113
    move-result-object v30

    #@114
    .line 370
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_e

    #@116
    .line 371
    invoke-static/range {v30 .. v30}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    #@119
    move-result-object v2

    #@11a
    move/from16 v0, p1

    #@11c
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11f
    goto :goto_4

    #@120
    .line 462
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

    #@121
    .line 463
    if-eqz v20, :cond_d

    #@123
    .line 464
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@126
    .line 462
    :cond_d
    throw v2

    #@127
    .line 373
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

    #@129
    :try_start_4
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    #@12c
    goto :goto_4

    #@12d
    .line 378
    .end local v30    # "value":Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@130
    move-result-object v26

    #@131
    .line 380
    .local v26, "name":Ljava/lang/String;
    if-nez v26, :cond_f

    #@133
    .line 381
    const-string/jumbo v2, "name"

    #@136
    move-object/from16 v0, p0

    #@138
    move/from16 v1, p1

    #@13a
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    #@13d
    move-result-object v26

    #@13e
    .line 384
    :cond_f
    if-nez v26, :cond_10

    #@140
    .line 385
    const-string/jumbo v2, "_data"

    #@143
    move-object/from16 v0, p0

    #@145
    move/from16 v1, p1

    #@147
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    #@14a
    move-result-object v26

    #@14b
    .line 386
    if-eqz v26, :cond_10

    #@14d
    .line 387
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    #@150
    move-result-object v26

    #@151
    .line 390
    :cond_10
    if-eqz v26, :cond_11

    #@153
    .line 391
    move/from16 v0, p1

    #@155
    move-object/from16 v1, v26

    #@157
    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@15a
    goto :goto_4

    #@15b
    .line 393
    :cond_11
    const/16 v2, 0x2009

    #@15d
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    #@160
    goto :goto_4

    #@161
    .line 399
    .end local v26    # "name":Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    #@164
    move-result v2

    #@165
    int-to-long v2, v2

    #@166
    move-object/from16 v0, p0

    #@168
    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    #@16b
    move-result-object v2

    #@16c
    move/from16 v0, p1

    #@16e
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@171
    goto/16 :goto_4

    #@173
    .line 403
    :sswitch_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    #@176
    move-result v31

    #@177
    .line 404
    .local v31, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17f
    move-result-object v3

    #@180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v2

    #@184
    const-string/jumbo v3, "0101T000000"

    #@187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v2

    #@18b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v23

    #@18f
    .line 405
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    #@191
    move-object/from16 v1, v23

    #@193
    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@196
    goto/16 :goto_4

    #@198
    .line 409
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v31    # "year":I
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    #@19b
    move-result-wide v12

    #@19c
    .line 410
    .local v12, "puid":J
    const/16 v2, 0x20

    #@19e
    shl-long/2addr v12, v2

    #@19f
    .line 411
    move/from16 v0, p1

    #@1a1
    int-to-long v2, v0

    #@1a2
    add-long/2addr v12, v2

    #@1a3
    .line 412
    const/16 v11, 0xa

    #@1a5
    move/from16 v9, p1

    #@1a7
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@1aa
    goto/16 :goto_4

    #@1ac
    .line 416
    .end local v12    # "puid":J
    :sswitch_6
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    #@1af
    move-result v2

    #@1b0
    rem-int/lit16 v2, v2, 0x3e8

    #@1b2
    int-to-long v0, v2

    #@1b3
    move-wide/from16 v18, v0

    #@1b5
    .line 415
    const/16 v17, 0x4

    #@1b7
    move-object v14, v8

    #@1b8
    move/from16 v15, p1

    #@1ba
    move/from16 v16, v10

    #@1bc
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@1bf
    goto/16 :goto_4

    #@1c1
    .line 420
    :sswitch_7
    const-string/jumbo v2, "artist"

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    move/from16 v1, p1

    #@1c8
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    #@1cb
    move-result-object v2

    #@1cc
    .line 419
    move/from16 v0, p1

    #@1ce
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@1d1
    goto/16 :goto_4

    #@1d3
    .line 424
    :sswitch_8
    const-string/jumbo v2, "album"

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    move/from16 v1, p1

    #@1da
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    #@1dd
    move-result-object v2

    #@1de
    .line 423
    move/from16 v0, p1

    #@1e0
    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@1e3
    goto/16 :goto_4

    #@1e5
    .line 427
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    #@1e8
    move-result-object v25

    #@1e9
    .line 428
    .local v25, "genre":Ljava/lang/String;
    if-eqz v25, :cond_12

    #@1eb
    .line 429
    move/from16 v0, p1

    #@1ed
    move-object/from16 v1, v25

    #@1ef
    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    #@1f2
    goto/16 :goto_4

    #@1f4
    .line 431
    :cond_12
    const/16 v2, 0x2009

    #@1f6
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    #@1f9
    goto/16 :goto_4

    #@1fb
    .line 438
    .end local v25    # "genre":Ljava/lang/String;
    :sswitch_a
    const-wide/16 v18, 0x0

    #@1fd
    const/16 v17, 0x6

    #@1ff
    move-object v14, v8

    #@200
    move/from16 v15, p1

    #@202
    move/from16 v16, v10

    #@204
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@207
    goto/16 :goto_4

    #@209
    .line 443
    :sswitch_b
    const-wide/16 v18, 0x0

    #@20b
    const/16 v17, 0x4

    #@20d
    move-object v14, v8

    #@20e
    move/from16 v15, p1

    #@210
    move/from16 v16, v10

    #@212
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@215
    goto/16 :goto_4

    #@217
    .line 448
    :cond_13
    move-object/from16 v0, v28

    #@219
    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@21b
    if-nez v2, :cond_14

    #@21d
    .line 449
    move-object/from16 v0, v28

    #@21f
    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@221
    move/from16 v17, v0

    #@223
    const-wide/16 v18, 0x0

    #@225
    move-object v14, v8

    #@226
    move/from16 v15, p1

    #@228
    move/from16 v16, v10

    #@22a
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    #@22d
    goto/16 :goto_4

    #@22f
    .line 451
    :cond_14
    move-object/from16 v0, v28

    #@231
    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    #@233
    move/from16 v17, v0

    #@235
    .line 452
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    #@238
    move-result-wide v18

    #@239
    move-object v14, v8

    #@23a
    move/from16 v15, p1

    #@23c
    move/from16 v16, v10

    #@23e
    .line 451
    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@241
    goto/16 :goto_4

    #@243
    .line 349
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_15
    add-int/lit8 v27, v27, 0x1

    #@245
    goto/16 :goto_2

    #@247
    .line 463
    .end local v29    # "propertyIndex":I
    :cond_16
    if-eqz v20, :cond_17

    #@249
    .line 464
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@24c
    .line 459
    :cond_17
    return-object v8

    #@24d
    .line 362
    nop

    #@24e
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

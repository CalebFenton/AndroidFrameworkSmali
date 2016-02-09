.class public final Landroid/provider/MediaStore$Audio;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$AudioColumns;,
        Landroid/provider/MediaStore$Audio$Media;,
        Landroid/provider/MediaStore$Audio$GenresColumns;,
        Landroid/provider/MediaStore$Audio$Genres;,
        Landroid/provider/MediaStore$Audio$PlaylistsColumns;,
        Landroid/provider/MediaStore$Audio$Playlists;,
        Landroid/provider/MediaStore$Audio$ArtistColumns;,
        Landroid/provider/MediaStore$Audio$Artists;,
        Landroid/provider/MediaStore$Audio$AlbumColumns;,
        Landroid/provider/MediaStore$Audio$Albums;,
        Landroid/provider/MediaStore$Audio$Radio;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v7, 0x2e

    #@3
    const/4 v6, 0x0

    #@4
    .line 1353
    if-eqz p0, :cond_a

    #@6
    .line 1354
    const/4 v4, 0x0

    #@7
    .line 1355
    .local v4, "sortfirst":Z
    const-string/jumbo v5, "<unknown>"

    #@a
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 1356
    const-string/jumbo v5, "\u0001"

    #@13
    return-object v5

    #@14
    .line 1360
    :cond_0
    const-string/jumbo v5, "\u0001"

    #@17
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 1361
    const/4 v4, 0x1

    #@1e
    .line 1363
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    .line 1364
    const-string/jumbo v5, "the "

    #@29
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 1365
    const/4 v5, 0x4

    #@30
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33
    move-result-object p0

    #@34
    .line 1367
    :cond_2
    const-string/jumbo v5, "an "

    #@37
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3

    #@3d
    .line 1368
    const/4 v5, 0x3

    #@3e
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object p0

    #@42
    .line 1370
    :cond_3
    const-string/jumbo v5, "a "

    #@45
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_4

    #@4b
    .line 1371
    const/4 v5, 0x2

    #@4c
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object p0

    #@50
    .line 1373
    :cond_4
    const-string/jumbo v5, ", the"

    #@53
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_5

    #@59
    const-string/jumbo v5, ",the"

    #@5c
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5f
    move-result v5

    #@60
    if-nez v5, :cond_5

    #@62
    .line 1374
    const-string/jumbo v5, ", an"

    #@65
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@68
    move-result v5

    #@69
    .line 1373
    if-nez v5, :cond_5

    #@6b
    .line 1374
    const-string/jumbo v5, ",an"

    #@6e
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@71
    move-result v5

    #@72
    .line 1373
    if-nez v5, :cond_5

    #@74
    .line 1375
    const-string/jumbo v5, ", a"

    #@77
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7a
    move-result v5

    #@7b
    .line 1373
    if-nez v5, :cond_5

    #@7d
    .line 1375
    const-string/jumbo v5, ",a"

    #@80
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@83
    move-result v5

    #@84
    .line 1373
    if-eqz v5, :cond_6

    #@86
    .line 1376
    :cond_5
    const/16 v5, 0x2c

    #@88
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@8b
    move-result v5

    #@8c
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8f
    move-result-object p0

    #@90
    .line 1378
    :cond_6
    const-string/jumbo v5, "[\\[\\]\\(\\)\"\'.,?!]"

    #@93
    const-string/jumbo v6, ""

    #@96
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9d
    move-result-object p0

    #@9e
    .line 1379
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a1
    move-result v5

    #@a2
    if-lez v5, :cond_9

    #@a4
    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    .line 1384
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    .line 1385
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@af
    move-result v3

    #@b0
    .line 1386
    .local v3, "nl":I
    const/4 v1, 0x0

    #@b1
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_7

    #@b3
    .line 1387
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b6
    move-result v5

    #@b7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ba
    .line 1388
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bd
    .line 1386
    add-int/lit8 v1, v1, 0x1

    #@bf
    goto :goto_0

    #@c0
    .line 1390
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object p0

    #@c4
    .line 1391
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    .line 1392
    .local v2, "key":Ljava/lang/String;
    if-eqz v4, :cond_8

    #@ca
    .line 1393
    new-instance v5, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v6, "\u0001"

    #@d2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v2

    #@de
    .line 1395
    :cond_8
    return-object v2

    #@df
    .line 1397
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "nl":I
    :cond_9
    const-string/jumbo v5, ""

    #@e2
    return-object v5

    #@e3
    .line 1400
    .end local v4    # "sortfirst":Z
    :cond_a
    return-object v5
.end method

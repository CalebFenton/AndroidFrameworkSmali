.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    #@3
    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    #@0
    .prologue
    .line 697
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 698
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 699
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 701
    :cond_0
    const-string/jumbo v1, "MediaScanner"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "\'"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "\' -> \'"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "\', expected \'"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "\'"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 702
    const/4 v1, 0x0

    #@44
    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1060
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, 0x1

    #@9
    .line 1061
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    .line 1062
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 1063
    add-int v3, v1, v0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v4

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 1062
    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 34
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 861
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@4
    move-object/from16 v29, v0

    #@6
    if-eqz v29, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@c
    move-object/from16 v29, v0

    #@e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@11
    move-result v29

    #@12
    if-nez v29, :cond_1

    #@14
    .line 862
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@18
    move-object/from16 v29, v0

    #@1a
    move-object/from16 v0, v29

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@20
    .line 865
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    #@23
    move-result-object v28

    #@24
    .line 866
    .local v28, "values":Landroid/content/ContentValues;
    const-string/jumbo v29, "title"

    #@27
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v25

    #@2b
    .line 867
    .local v25, "title":Ljava/lang/String;
    if-eqz v25, :cond_2

    #@2d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@30
    move-result-object v29

    #@31
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v29

    #@35
    if-eqz v29, :cond_3

    #@37
    .line 868
    :cond_2
    const-string/jumbo v29, "_data"

    #@3a
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v29

    #@3e
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v25

    #@42
    .line 869
    const-string/jumbo v29, "title"

    #@45
    move-object/from16 v0, v28

    #@47
    move-object/from16 v1, v29

    #@49
    move-object/from16 v2, v25

    #@4b
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 871
    :cond_3
    const-string/jumbo v29, "album"

    #@51
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 872
    .local v6, "album":Ljava/lang/String;
    const-string/jumbo v29, "<unknown>"

    #@58
    move-object/from16 v0, v29

    #@5a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v29

    #@5e
    if-eqz v29, :cond_5

    #@60
    .line 873
    const-string/jumbo v29, "_data"

    #@63
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    .line 875
    const/16 v29, 0x2f

    #@69
    move/from16 v0, v29

    #@6b
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@6e
    move-result v15

    #@6f
    .line 876
    .local v15, "lastSlash":I
    if-ltz v15, :cond_5

    #@71
    .line 877
    const/16 v20, 0x0

    #@73
    .line 879
    .local v20, "previousSlash":I
    :goto_0
    const/16 v29, 0x2f

    #@75
    add-int/lit8 v30, v20, 0x1

    #@77
    move/from16 v0, v29

    #@79
    move/from16 v1, v30

    #@7b
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@7e
    move-result v13

    #@7f
    .line 880
    .local v13, "idx":I
    if-ltz v13, :cond_4

    #@81
    if-lt v13, v15, :cond_13

    #@83
    .line 885
    :cond_4
    if-eqz v20, :cond_5

    #@85
    .line 886
    add-int/lit8 v29, v20, 0x1

    #@87
    move/from16 v0, v29

    #@89
    invoke-virtual {v6, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 887
    const-string/jumbo v29, "album"

    #@90
    move-object/from16 v0, v28

    #@92
    move-object/from16 v1, v29

    #@94
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@97
    .line 891
    .end local v13    # "idx":I
    .end local v15    # "lastSlash":I
    .end local v20    # "previousSlash":I
    :cond_5
    move-object/from16 v0, p1

    #@99
    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@9b
    move-wide/from16 v22, v0

    #@9d
    .line 892
    .local v22, "rowId":J
    move-object/from16 v0, p0

    #@9f
    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@a1
    move/from16 v29, v0

    #@a3
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@a6
    move-result v29

    #@a7
    if-eqz v29, :cond_14

    #@a9
    const-wide/16 v30, 0x0

    #@ab
    cmp-long v29, v22, v30

    #@ad
    if-eqz v29, :cond_6

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@b3
    move-object/from16 v29, v0

    #@b5
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@b8
    move-result v29

    #@b9
    if-eqz v29, :cond_14

    #@bb
    .line 897
    :cond_6
    const-string/jumbo v29, "is_ringtone"

    #@be
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c1
    move-result-object v30

    #@c2
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@c5
    .line 898
    const-string/jumbo v29, "is_notification"

    #@c8
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@cb
    move-result-object v30

    #@cc
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@cf
    .line 899
    const-string/jumbo v29, "is_alarm"

    #@d2
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d5
    move-result-object v30

    #@d6
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@d9
    .line 900
    const-string/jumbo v29, "is_music"

    #@dc
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@df
    move-result-object v30

    #@e0
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@e3
    .line 901
    const-string/jumbo v29, "is_podcast"

    #@e6
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e9
    move-result-object v30

    #@ea
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@ed
    .line 955
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@f1
    move-object/from16 v29, v0

    #@f3
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@f6
    move-result-object v24

    #@f7
    .line 956
    .local v24, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@fb
    move-object/from16 v29, v0

    #@fd
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    #@100
    move-result-object v14

    #@101
    .line 957
    .local v14, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    #@103
    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@105
    move/from16 v29, v0

    #@107
    if-nez v29, :cond_8

    #@109
    .line 958
    move-object/from16 v0, p0

    #@10b
    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@10d
    move/from16 v29, v0

    #@10f
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@112
    move-result v29

    #@113
    if-eqz v29, :cond_19

    #@115
    .line 959
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@119
    move-object/from16 v29, v0

    #@11b
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get19(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@11e
    move-result-object v24

    #@11f
    .line 966
    :cond_8
    :goto_2
    const/16 v21, 0x0

    #@121
    .line 967
    .local v21, "result":Landroid/net/Uri;
    const/16 v18, 0x0

    #@123
    .line 971
    .local v18, "needToSetSettings":Z
    if-eqz p3, :cond_9

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@129
    move-object/from16 v29, v0

    #@12b
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Z

    #@12e
    move-result v29

    #@12f
    if-eqz v29, :cond_1b

    #@131
    .line 976
    :cond_9
    if-eqz p2, :cond_a

    #@133
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@137
    move-object/from16 v29, v0

    #@139
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    #@13c
    move-result v29

    #@13d
    if-eqz v29, :cond_1d

    #@13f
    .line 981
    :cond_a
    if-eqz p4, :cond_b

    #@141
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@145
    move-object/from16 v29, v0

    #@147
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    #@14a
    move-result v29

    #@14b
    if-eqz v29, :cond_1f

    #@14d
    .line 988
    :cond_b
    :goto_3
    const-wide/16 v30, 0x0

    #@14f
    cmp-long v29, v22, v30

    #@151
    if-nez v29, :cond_23

    #@153
    .line 989
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@157
    move-object/from16 v29, v0

    #@159
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@15c
    move-result v29

    #@15d
    if-eqz v29, :cond_c

    #@15f
    .line 990
    const-string/jumbo v29, "media_scanner_new_object_id"

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@166
    move-object/from16 v30, v0

    #@168
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@16b
    move-result v30

    #@16c
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16f
    move-result-object v30

    #@170
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@173
    .line 992
    :cond_c
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@177
    move-object/from16 v29, v0

    #@179
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@17c
    move-result-object v29

    #@17d
    move-object/from16 v0, v24

    #@17f
    move-object/from16 v1, v29

    #@181
    if-ne v0, v1, :cond_e

    #@183
    .line 993
    move-object/from16 v0, p1

    #@185
    iget v12, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    #@187
    .line 994
    .local v12, "format":I
    if-nez v12, :cond_d

    #@189
    .line 995
    move-object/from16 v0, p1

    #@18b
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@18d
    move-object/from16 v29, v0

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@193
    move-object/from16 v30, v0

    #@195
    invoke-static/range {v29 .. v30}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    #@198
    move-result v12

    #@199
    .line 997
    :cond_d
    const-string/jumbo v29, "format"

    #@19c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19f
    move-result-object v30

    #@1a0
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1a3
    .line 1004
    .end local v12    # "format":I
    :cond_e
    if-eqz v14, :cond_f

    #@1a5
    if-eqz v18, :cond_21

    #@1a7
    .line 1005
    :cond_f
    if-eqz v14, :cond_10

    #@1a9
    .line 1006
    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    #@1ac
    .line 1008
    :cond_10
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@1b0
    move-object/from16 v29, v0

    #@1b2
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    #@1b5
    move-result-object v29

    #@1b6
    move-object/from16 v0, v29

    #@1b8
    move-object/from16 v1, v24

    #@1ba
    move-object/from16 v2, v28

    #@1bc
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@1bf
    move-result-object v21

    #@1c0
    .line 1015
    .end local v21    # "result":Landroid/net/Uri;
    :goto_4
    if-eqz v21, :cond_11

    #@1c2
    .line 1016
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@1c5
    move-result-wide v22

    #@1c6
    .line 1017
    move-wide/from16 v0, v22

    #@1c8
    move-object/from16 v2, p1

    #@1ca
    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@1cc
    .line 1043
    :cond_11
    :goto_5
    if-eqz v18, :cond_12

    #@1ce
    .line 1044
    if-eqz p3, :cond_29

    #@1d0
    .line 1045
    const-string/jumbo v29, "notification_sound"

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    move-object/from16 v1, v29

    #@1d7
    move-object/from16 v2, v24

    #@1d9
    move-wide/from16 v3, v22

    #@1db
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    #@1de
    .line 1046
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@1e2
    move-object/from16 v29, v0

    #@1e4
    const/16 v30, 0x1

    #@1e6
    invoke-static/range {v29 .. v30}, Landroid/media/MediaScanner;->-set1(Landroid/media/MediaScanner;Z)Z

    #@1e9
    .line 1056
    :cond_12
    :goto_6
    return-object v21

    #@1ea
    .line 883
    .end local v14    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "needToSetSettings":Z
    .end local v22    # "rowId":J
    .end local v24    # "tableUri":Landroid/net/Uri;
    .restart local v13    # "idx":I
    .restart local v15    # "lastSlash":I
    .restart local v20    # "previousSlash":I
    :cond_13
    move/from16 v20, v13

    #@1ec
    goto/16 :goto_0

    #@1ee
    .line 902
    .end local v13    # "idx":I
    .end local v15    # "lastSlash":I
    .end local v20    # "previousSlash":I
    .restart local v22    # "rowId":J
    :cond_14
    move-object/from16 v0, p0

    #@1f0
    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@1f2
    move/from16 v29, v0

    #@1f4
    const/16 v30, 0x1f

    #@1f6
    move/from16 v0, v29

    #@1f8
    move/from16 v1, v30

    #@1fa
    if-eq v0, v1, :cond_15

    #@1fc
    .line 903
    move-object/from16 v0, p0

    #@1fe
    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@200
    move/from16 v29, v0

    #@202
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    #@205
    move-result v29

    #@206
    .line 902
    if-eqz v29, :cond_7

    #@208
    .line 903
    :cond_15
    move-object/from16 v0, p0

    #@20a
    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@20c
    move/from16 v29, v0

    #@20e
    if-nez v29, :cond_7

    #@210
    .line 904
    const/4 v9, 0x0

    #@211
    .line 906
    .local v9, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    #@213
    move-object/from16 v0, p1

    #@215
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@217
    move-object/from16 v29, v0

    #@219
    move-object/from16 v0, v29

    #@21b
    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21e
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .local v10, "exif":Landroid/media/ExifInterface;
    move-object v9, v10

    #@21f
    .line 910
    .end local v10    # "exif":Landroid/media/ExifInterface;
    :goto_7
    if-eqz v9, :cond_7

    #@221
    .line 911
    const/16 v29, 0x2

    #@223
    move/from16 v0, v29

    #@225
    new-array v0, v0, [F

    #@227
    move-object/from16 v16, v0

    #@229
    .line 912
    .local v16, "latlng":[F
    move-object/from16 v0, v16

    #@22b
    invoke-virtual {v9, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    #@22e
    move-result v29

    #@22f
    if-eqz v29, :cond_16

    #@231
    .line 913
    const-string/jumbo v29, "latitude"

    #@234
    const/16 v30, 0x0

    #@236
    aget v30, v16, v30

    #@238
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@23b
    move-result-object v30

    #@23c
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@23f
    .line 914
    const-string/jumbo v29, "longitude"

    #@242
    const/16 v30, 0x1

    #@244
    aget v30, v16, v30

    #@246
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@249
    move-result-object v30

    #@24a
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@24d
    .line 917
    :cond_16
    invoke-virtual {v9}, Landroid/media/ExifInterface;->getGpsDateTime()J

    #@250
    move-result-wide v26

    #@251
    .line 918
    .local v26, "time":J
    const-wide/16 v30, -0x1

    #@253
    cmp-long v29, v26, v30

    #@255
    if-eqz v29, :cond_18

    #@257
    .line 919
    const-string/jumbo v29, "datetaken"

    #@25a
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25d
    move-result-object v30

    #@25e
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@261
    .line 932
    :cond_17
    :goto_8
    const-string/jumbo v29, "Orientation"

    #@264
    const/16 v30, -0x1

    #@266
    .line 931
    move-object/from16 v0, v29

    #@268
    move/from16 v1, v30

    #@26a
    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@26d
    move-result v19

    #@26e
    .line 933
    .local v19, "orientation":I
    const/16 v29, -0x1

    #@270
    move/from16 v0, v19

    #@272
    move/from16 v1, v29

    #@274
    if-eq v0, v1, :cond_7

    #@276
    .line 936
    packed-switch v19, :pswitch_data_0

    #@279
    .line 947
    :pswitch_0
    const/4 v7, 0x0

    #@27a
    .line 950
    .local v7, "degree":I
    :goto_9
    const-string/jumbo v29, "orientation"

    #@27d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@280
    move-result-object v30

    #@281
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@284
    goto/16 :goto_1

    #@286
    .line 925
    .end local v7    # "degree":I
    .end local v19    # "orientation":I
    :cond_18
    invoke-virtual {v9}, Landroid/media/ExifInterface;->getDateTime()J

    #@289
    move-result-wide v26

    #@28a
    .line 926
    const-wide/16 v30, -0x1

    #@28c
    cmp-long v29, v26, v30

    #@28e
    if-eqz v29, :cond_17

    #@290
    move-object/from16 v0, p0

    #@292
    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    #@294
    move-wide/from16 v30, v0

    #@296
    const-wide/16 v32, 0x3e8

    #@298
    mul-long v30, v30, v32

    #@29a
    sub-long v30, v30, v26

    #@29c
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(J)J

    #@29f
    move-result-wide v30

    #@2a0
    const-wide/32 v32, 0x5265c00

    #@2a3
    cmp-long v29, v30, v32

    #@2a5
    if-ltz v29, :cond_17

    #@2a7
    .line 927
    const-string/jumbo v29, "datetaken"

    #@2aa
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2ad
    move-result-object v30

    #@2ae
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2b1
    goto :goto_8

    #@2b2
    .line 938
    .restart local v19    # "orientation":I
    :pswitch_1
    const/16 v7, 0x5a

    #@2b4
    .line 939
    .restart local v7    # "degree":I
    goto :goto_9

    #@2b5
    .line 941
    .end local v7    # "degree":I
    :pswitch_2
    const/16 v7, 0xb4

    #@2b7
    .line 942
    .restart local v7    # "degree":I
    goto :goto_9

    #@2b8
    .line 944
    .end local v7    # "degree":I
    :pswitch_3
    const/16 v7, 0x10e

    #@2ba
    .line 945
    .restart local v7    # "degree":I
    goto :goto_9

    #@2bb
    .line 960
    .end local v7    # "degree":I
    .end local v16    # "latlng":[F
    .end local v19    # "orientation":I
    .end local v26    # "time":J
    .restart local v14    # "inserter":Landroid/media/MediaInserter;
    .restart local v24    # "tableUri":Landroid/net/Uri;
    :cond_19
    move-object/from16 v0, p0

    #@2bd
    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@2bf
    move/from16 v29, v0

    #@2c1
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@2c4
    move-result v29

    #@2c5
    if-eqz v29, :cond_1a

    #@2c7
    .line 961
    move-object/from16 v0, p0

    #@2c9
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2cb
    move-object/from16 v29, v0

    #@2cd
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@2d0
    move-result-object v24

    #@2d1
    goto/16 :goto_2

    #@2d3
    .line 962
    :cond_1a
    move-object/from16 v0, p0

    #@2d5
    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@2d7
    move/from16 v29, v0

    #@2d9
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@2dc
    move-result v29

    #@2dd
    if-eqz v29, :cond_8

    #@2df
    .line 963
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2e3
    move-object/from16 v29, v0

    #@2e5
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get1(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@2e8
    move-result-object v24

    #@2e9
    goto/16 :goto_2

    #@2eb
    .line 972
    .restart local v18    # "needToSetSettings":Z
    .restart local v21    # "result":Landroid/net/Uri;
    :cond_1b
    move-object/from16 v0, p0

    #@2ed
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2ef
    move-object/from16 v29, v0

    #@2f1
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@2f4
    move-result-object v29

    #@2f5
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f8
    move-result v29

    #@2f9
    if-nez v29, :cond_1c

    #@2fb
    .line 973
    move-object/from16 v0, p1

    #@2fd
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@2ff
    move-object/from16 v29, v0

    #@301
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@305
    move-object/from16 v30, v0

    #@307
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@30a
    move-result-object v30

    #@30b
    move-object/from16 v0, p0

    #@30d
    move-object/from16 v1, v29

    #@30f
    move-object/from16 v2, v30

    #@311
    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@314
    move-result v29

    #@315
    .line 972
    if-eqz v29, :cond_b

    #@317
    .line 974
    :cond_1c
    const/16 v18, 0x1

    #@319
    goto/16 :goto_3

    #@31b
    .line 977
    :cond_1d
    move-object/from16 v0, p0

    #@31d
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@31f
    move-object/from16 v29, v0

    #@321
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@324
    move-result-object v29

    #@325
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@328
    move-result v29

    #@329
    if-nez v29, :cond_1e

    #@32b
    .line 978
    move-object/from16 v0, p1

    #@32d
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@32f
    move-object/from16 v29, v0

    #@331
    move-object/from16 v0, p0

    #@333
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@335
    move-object/from16 v30, v0

    #@337
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@33a
    move-result-object v30

    #@33b
    move-object/from16 v0, p0

    #@33d
    move-object/from16 v1, v29

    #@33f
    move-object/from16 v2, v30

    #@341
    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@344
    move-result v29

    #@345
    .line 977
    if-eqz v29, :cond_b

    #@347
    .line 979
    :cond_1e
    const/16 v18, 0x1

    #@349
    goto/16 :goto_3

    #@34b
    .line 982
    :cond_1f
    move-object/from16 v0, p0

    #@34d
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@34f
    move-object/from16 v29, v0

    #@351
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@354
    move-result-object v29

    #@355
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@358
    move-result v29

    #@359
    if-nez v29, :cond_20

    #@35b
    .line 983
    move-object/from16 v0, p1

    #@35d
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@35f
    move-object/from16 v29, v0

    #@361
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@365
    move-object/from16 v30, v0

    #@367
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@36a
    move-result-object v30

    #@36b
    move-object/from16 v0, p0

    #@36d
    move-object/from16 v1, v29

    #@36f
    move-object/from16 v2, v30

    #@371
    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@374
    move-result v29

    #@375
    .line 982
    if-eqz v29, :cond_b

    #@377
    .line 984
    :cond_20
    const/16 v18, 0x1

    #@379
    goto/16 :goto_3

    #@37b
    .line 1009
    :cond_21
    move-object/from16 v0, p1

    #@37d
    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    #@37f
    move/from16 v29, v0

    #@381
    const/16 v30, 0x3001

    #@383
    move/from16 v0, v29

    #@385
    move/from16 v1, v30

    #@387
    if-ne v0, v1, :cond_22

    #@389
    .line 1010
    move-object/from16 v0, v24

    #@38b
    move-object/from16 v1, v28

    #@38d
    invoke-virtual {v14, v0, v1}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@390
    goto/16 :goto_4

    #@392
    .line 1012
    :cond_22
    move-object/from16 v0, v24

    #@394
    move-object/from16 v1, v28

    #@396
    invoke-virtual {v14, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@399
    goto/16 :goto_4

    #@39b
    .line 1021
    :cond_23
    move-object/from16 v0, v24

    #@39d
    move-wide/from16 v1, v22

    #@39f
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@3a2
    move-result-object v21

    #@3a3
    .line 1024
    .local v21, "result":Landroid/net/Uri;
    const-string/jumbo v29, "_data"

    #@3a6
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    #@3a9
    .line 1026
    const/16 v17, 0x0

    #@3ab
    .line 1027
    .local v17, "mediaType":I
    move-object/from16 v0, p1

    #@3ad
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@3af
    move-object/from16 v29, v0

    #@3b1
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    #@3b4
    move-result v29

    #@3b5
    if-nez v29, :cond_25

    #@3b7
    .line 1028
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@3bb
    move-object/from16 v29, v0

    #@3bd
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@3c0
    move-result v11

    #@3c1
    .line 1029
    .local v11, "fileType":I
    invoke-static {v11}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@3c4
    move-result v29

    #@3c5
    if-eqz v29, :cond_26

    #@3c7
    .line 1030
    const/16 v17, 0x2

    #@3c9
    .line 1038
    :cond_24
    :goto_a
    const-string/jumbo v29, "media_type"

    #@3cc
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3cf
    move-result-object v30

    #@3d0
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3d3
    .line 1040
    .end local v11    # "fileType":I
    :cond_25
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3d7
    move-object/from16 v29, v0

    #@3d9
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    #@3dc
    move-result-object v29

    #@3dd
    const/16 v30, 0x0

    #@3df
    const/16 v31, 0x0

    #@3e1
    move-object/from16 v0, v29

    #@3e3
    move-object/from16 v1, v21

    #@3e5
    move-object/from16 v2, v28

    #@3e7
    move-object/from16 v3, v30

    #@3e9
    move-object/from16 v4, v31

    #@3eb
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3ee
    goto/16 :goto_5

    #@3f0
    .line 1031
    .restart local v11    # "fileType":I
    :cond_26
    invoke-static {v11}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@3f3
    move-result v29

    #@3f4
    if-eqz v29, :cond_27

    #@3f6
    .line 1032
    const/16 v17, 0x3

    #@3f8
    goto :goto_a

    #@3f9
    .line 1033
    :cond_27
    invoke-static {v11}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@3fc
    move-result v29

    #@3fd
    if-eqz v29, :cond_28

    #@3ff
    .line 1034
    const/16 v17, 0x1

    #@401
    goto :goto_a

    #@402
    .line 1035
    :cond_28
    invoke-static {v11}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@405
    move-result v29

    #@406
    if-eqz v29, :cond_24

    #@408
    .line 1036
    const/16 v17, 0x4

    #@40a
    goto :goto_a

    #@40b
    .line 1047
    .end local v11    # "fileType":I
    .end local v17    # "mediaType":I
    .end local v21    # "result":Landroid/net/Uri;
    :cond_29
    if-eqz p2, :cond_2a

    #@40d
    .line 1048
    const-string/jumbo v29, "ringtone"

    #@410
    move-object/from16 v0, p0

    #@412
    move-object/from16 v1, v29

    #@414
    move-object/from16 v2, v24

    #@416
    move-wide/from16 v3, v22

    #@418
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    #@41b
    .line 1049
    move-object/from16 v0, p0

    #@41d
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@41f
    move-object/from16 v29, v0

    #@421
    const/16 v30, 0x1

    #@423
    invoke-static/range {v29 .. v30}, Landroid/media/MediaScanner;->-set2(Landroid/media/MediaScanner;Z)Z

    #@426
    goto/16 :goto_6

    #@428
    .line 1050
    :cond_2a
    if-eqz p4, :cond_12

    #@42a
    .line 1051
    const-string/jumbo v29, "alarm_alert"

    #@42d
    move-object/from16 v0, p0

    #@42f
    move-object/from16 v1, v29

    #@431
    move-object/from16 v2, v24

    #@433
    move-wide/from16 v3, v22

    #@435
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    #@438
    .line 1052
    move-object/from16 v0, p0

    #@43a
    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@43c
    move-object/from16 v29, v0

    #@43e
    const/16 v30, 0x1

    #@440
    invoke-static/range {v29 .. v30}, Landroid/media/MediaScanner;->-set0(Landroid/media/MediaScanner;Z)Z

    #@443
    goto/16 :goto_6

    #@445
    .line 907
    .end local v14    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "needToSetSettings":Z
    .end local v24    # "tableUri":Landroid/net/Uri;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v8

    #@446
    .local v8, "ex":Ljava/io/IOException;
    goto/16 :goto_7

    #@448
    .line 936
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1083
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3
    invoke-static {v2}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1084
    const/4 v2, 0x0

    #@a
    return v2

    #@b
    .line 1087
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 1089
    .local v1, "resultFileType":I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@e
    invoke-static {v2}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 1090
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@16
    new-instance v3, Landroid/drm/DrmManagerClient;

    #@18
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@1a
    invoke-static {v4}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #@21
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->-set3(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    #@24
    .line 1093
    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@26
    invoke-static {v2}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 1094
    const/4 v2, 0x1

    #@31
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@33
    .line 1095
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@35
    invoke-static {v2}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 1096
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3f
    .line 1097
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@41
    .line 1098
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@44
    move-result v1

    #@45
    .line 1101
    .end local v0    # "drmMimetype":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    const/16 v7, 0x39

    #@2
    const/16 v6, 0x30

    #@4
    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 632
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    #@a
    return p3

    #@b
    .line 634
    :cond_0
    add-int/lit8 v3, p2, 0x1

    #@d
    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 636
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    #@13
    if-le v0, v7, :cond_2

    #@15
    :cond_1
    return p3

    #@16
    .line 638
    :cond_2
    add-int/lit8 v2, v0, -0x30

    #@18
    .line 639
    .local v2, "result":I
    :goto_0
    if-ge v3, v1, :cond_5

    #@1a
    .line 640
    add-int/lit8 p2, v3, 0x1

    #@1c
    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v0

    #@20
    .line 641
    if-lt v0, v6, :cond_3

    #@22
    if-le v0, v7, :cond_4

    #@24
    :cond_3
    return v2

    #@25
    .line 642
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    #@27
    add-int/lit8 v5, v0, -0x30

    #@29
    add-int v2, v4, v5

    #@2b
    move v3, p2

    #@2c
    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0

    #@2d
    .line 645
    :cond_5
    return v2
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 778
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@9
    .line 779
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@b
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@12
    .line 780
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@14
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@17
    move-result-object v1

    #@18
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1b
    .line 781
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@1d
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@20
    move-result-object v1

    #@21
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@23
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@25
    .line 782
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@27
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@2a
    move-result-object v1

    #@2b
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@2d
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 776
    :goto_0
    return-void

    #@30
    .line 783
    :catch_0
    move-exception v0

    #@31
    .local v0, "th":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 7
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    #@0
    .prologue
    .line 1067
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-static {v4, p1}, Landroid/media/MediaScanner;->-wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 1068
    return-void

    #@9
    .line 1071
    :cond_0
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@b
    invoke-static {v4}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v0

    #@13
    .line 1072
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1073
    .local v1, "existingSettingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1074
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v3

    #@21
    .line 1075
    .local v3, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@24
    move-result-object v2

    #@25
    .line 1076
    .local v2, "ringtoneUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@27
    invoke-static {v4}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    #@2a
    move-result-object v4

    #@2b
    .line 1077
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    #@2e
    move-result v5

    #@2f
    .line 1076
    invoke-static {v4, v5, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    #@32
    .line 1079
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    .end local v3    # "settingUri":Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@34
    invoke-static {v4, p1}, Landroid/media/MediaScanner;->-wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    const/4 v5, 0x1

    #@39
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@3c
    .line 1066
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    #@0
    .prologue
    .line 706
    const-string/jumbo v0, "2"

    #@3
    const-string/jumbo v1, "Country"

    #@6
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    .line 707
    const-string/jumbo v0, "(2)"

    #@c
    const-string/jumbo v1, "Country"

    #@f
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@12
    .line 708
    const-string/jumbo v0, "(2"

    #@15
    const-string/jumbo v1, "(2"

    #@18
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    .line 709
    const-string/jumbo v0, "2 Foo"

    #@1e
    const-string/jumbo v1, "Country"

    #@21
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@24
    .line 710
    const-string/jumbo v0, "(2) Foo"

    #@27
    const-string/jumbo v1, "Country"

    #@2a
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    .line 711
    const-string/jumbo v0, "(2 Foo"

    #@30
    const-string/jumbo v1, "(2 Foo"

    #@33
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    .line 712
    const-string/jumbo v0, "2Foo"

    #@39
    const-string/jumbo v1, "2Foo"

    #@3c
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@3f
    .line 713
    const-string/jumbo v0, "(2)Foo"

    #@42
    const-string/jumbo v1, "Country"

    #@45
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@48
    .line 714
    const-string/jumbo v0, "200 Foo"

    #@4b
    const-string/jumbo v1, "Foo"

    #@4e
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@51
    .line 715
    const-string/jumbo v0, "(200) Foo"

    #@54
    const-string/jumbo v1, "Foo"

    #@57
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@5a
    .line 716
    const-string/jumbo v0, "200Foo"

    #@5d
    const-string/jumbo v1, "200Foo"

    #@60
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@63
    .line 717
    const-string/jumbo v0, "(200)Foo"

    #@66
    const-string/jumbo v1, "Foo"

    #@69
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@6c
    .line 718
    const-string/jumbo v0, "200)Foo"

    #@6f
    const-string/jumbo v1, "200)Foo"

    #@72
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@75
    .line 719
    const-string/jumbo v0, "200) Foo"

    #@78
    const-string/jumbo v1, "200) Foo"

    #@7b
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@7e
    .line 705
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 807
    new-instance v0, Landroid/content/ContentValues;

    #@3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 809
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v2, "_data"

    #@9
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 810
    const-string/jumbo v2, "title"

    #@11
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 811
    const-string/jumbo v2, "date_modified"

    #@19
    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    #@1b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@22
    .line 812
    const-string/jumbo v2, "_size"

    #@25
    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    #@27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2e
    .line 813
    const-string/jumbo v2, "mime_type"

    #@31
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 814
    const-string/jumbo v2, "is_drm"

    #@39
    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@3b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@42
    .line 816
    const/4 v1, 0x0

    #@43
    .line 817
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@45
    if-lez v2, :cond_0

    #@47
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@49
    if-lez v2, :cond_0

    #@4b
    .line 818
    const-string/jumbo v2, "width"

    #@4e
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@57
    .line 819
    const-string/jumbo v2, "height"

    #@5a
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@5c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@63
    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@6a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    const-string/jumbo v4, "x"

    #@71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 823
    .end local v1    # "resolution":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@81
    if-nez v2, :cond_1

    #@83
    .line 824
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@85
    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_4

    #@8b
    .line 825
    const-string/jumbo v3, "artist"

    #@8e
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@90
    if-eqz v2, :cond_2

    #@92
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@97
    move-result v2

    #@98
    if-lez v2, :cond_2

    #@9a
    .line 826
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@9c
    .line 825
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 827
    const-string/jumbo v3, "album"

    #@a2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@a4
    if-eqz v2, :cond_3

    #@a6
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@a8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ab
    move-result v2

    #@ac
    if-lez v2, :cond_3

    #@ae
    .line 828
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@b0
    .line 827
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    .line 829
    const-string/jumbo v2, "duration"

    #@b6
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@b8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@bf
    .line 830
    if-eqz v1, :cond_1

    #@c1
    .line 831
    const-string/jumbo v2, "resolution"

    #@c4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    .line 852
    :cond_1
    :goto_2
    return-object v0

    #@c8
    .line 826
    :cond_2
    const-string/jumbo v2, "<unknown>"

    #@cb
    goto :goto_0

    #@cc
    .line 828
    :cond_3
    const-string/jumbo v2, "<unknown>"

    #@cf
    goto :goto_1

    #@d0
    .line 833
    :cond_4
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@d2
    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@d5
    move-result v2

    #@d6
    if-nez v2, :cond_1

    #@d8
    .line 835
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@da
    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_1

    #@e0
    .line 836
    const-string/jumbo v4, "artist"

    #@e3
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@e5
    if-eqz v2, :cond_6

    #@e7
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@e9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ec
    move-result v2

    #@ed
    if-lez v2, :cond_6

    #@ef
    .line 837
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@f1
    .line 836
    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@f4
    .line 838
    const-string/jumbo v4, "album_artist"

    #@f7
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@f9
    if-eqz v2, :cond_7

    #@fb
    .line 839
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@fd
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@100
    move-result v2

    #@101
    if-lez v2, :cond_7

    #@103
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@105
    .line 838
    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@108
    .line 840
    const-string/jumbo v3, "album"

    #@10b
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@10d
    if-eqz v2, :cond_8

    #@10f
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@114
    move-result v2

    #@115
    if-lez v2, :cond_8

    #@117
    .line 841
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@119
    .line 840
    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@11c
    .line 842
    const-string/jumbo v2, "composer"

    #@11f
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@121
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@124
    .line 843
    const-string/jumbo v2, "genre"

    #@127
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@129
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@12c
    .line 844
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@12e
    if-eqz v2, :cond_5

    #@130
    .line 845
    const-string/jumbo v2, "year"

    #@133
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v3

    #@139
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@13c
    .line 847
    :cond_5
    const-string/jumbo v2, "track"

    #@13f
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@144
    move-result-object v3

    #@145
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@148
    .line 848
    const-string/jumbo v2, "duration"

    #@14b
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@14d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@150
    move-result-object v3

    #@151
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@154
    .line 849
    const-string/jumbo v2, "compilation"

    #@157
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15c
    move-result-object v3

    #@15d
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@160
    goto/16 :goto_2

    #@162
    .line 837
    :cond_6
    const-string/jumbo v2, "<unknown>"

    #@165
    goto :goto_3

    #@166
    :cond_7
    move-object v2, v3

    #@167
    .line 839
    goto :goto_4

    #@168
    .line 841
    :cond_8
    const-string/jumbo v2, "<unknown>"

    #@16b
    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    #@0
    .prologue
    .line 477
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@2
    .line 478
    const/4 v3, 0x0

    #@3
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@5
    .line 479
    move-wide/from16 v0, p5

    #@7
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    #@9
    .line 480
    const/4 v3, 0x0

    #@a
    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@c
    .line 482
    if-nez p7, :cond_3

    #@e
    .line 483
    if-nez p8, :cond_0

    #@10
    invoke-static {p1}, Landroid/media/MediaScanner;->-wrap1(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 484
    const/16 p8, 0x1

    #@18
    .line 486
    .end local p8    # "noMedia":Z
    :cond_0
    move/from16 v0, p8

    #@1a
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@1c
    .line 489
    if-eqz p2, :cond_1

    #@1e
    .line 490
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@21
    move-result v3

    #@22
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@24
    .line 494
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@26
    if-nez v3, :cond_2

    #@28
    .line 495
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@2b
    move-result-object v9

    #@2c
    .line 496
    .local v9, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v9, :cond_2

    #@2e
    .line 497
    iget v3, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@30
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@32
    .line 498
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@34
    if-nez v3, :cond_2

    #@36
    .line 499
    iget-object v3, v9, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    #@38
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@3a
    .line 504
    .end local v9    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3c
    invoke-static {v3}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_3

    #@42
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@44
    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_3

    #@4a
    .line 505
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    #@4d
    move-result v3

    #@4e
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@50
    .line 509
    :cond_3
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@52
    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    #@55
    move-result-object v2

    #@56
    .line 511
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v2, :cond_7

    #@58
    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@5a
    sub-long v10, p3, v4

    #@5c
    .line 512
    .local v10, "delta":J
    :goto_0
    const-wide/16 v4, 0x1

    #@5e
    cmp-long v3, v10, v4

    #@60
    if-gtz v3, :cond_4

    #@62
    const-wide/16 v4, -0x1

    #@64
    cmp-long v3, v10, v4

    #@66
    if-gez v3, :cond_8

    #@68
    :cond_4
    const/4 v12, 0x1

    #@69
    .line 513
    .local v12, "wasModified":Z
    :goto_1
    if-eqz v2, :cond_5

    #@6b
    if-eqz v12, :cond_6

    #@6d
    .line 514
    :cond_5
    if-eqz v12, :cond_9

    #@6f
    .line 515
    move-wide/from16 v0, p3

    #@71
    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@73
    .line 520
    :goto_2
    const/4 v3, 0x1

    #@74
    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@76
    .line 523
    :cond_6
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@78
    invoke-static {v3}, Landroid/media/MediaScanner;->-get18(Landroid/media/MediaScanner;)Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_b

    #@7e
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@80
    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_b

    #@86
    .line 524
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@88
    invoke-static {v3}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f
    .line 526
    const/4 v3, 0x0

    #@90
    return-object v3

    #@91
    .line 511
    .end local v10    # "delta":J
    .end local v12    # "wasModified":Z
    :cond_7
    const-wide/16 v10, 0x0

    #@93
    goto :goto_0

    #@94
    .line 512
    .restart local v10    # "delta":J
    :cond_8
    const/4 v12, 0x0

    #@95
    .restart local v12    # "wasModified":Z
    goto :goto_1

    #@96
    .line 517
    :cond_9
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    #@98
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    #@9a
    .line 518
    if-eqz p7, :cond_a

    #@9c
    const/16 v8, 0x3001

    #@9e
    :goto_3
    move-object v5, p1

    #@9f
    move-wide/from16 v6, p3

    #@a1
    .line 517
    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    #@a4
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    #@a5
    .line 518
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_a
    const/4 v8, 0x0

    #@a6
    goto :goto_3

    #@a7
    .line 530
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v3, 0x0

    #@a8
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@aa
    .line 531
    const/4 v3, 0x0

    #@ab
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@ad
    .line 532
    const/4 v3, 0x0

    #@ae
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@b0
    .line 533
    const/4 v3, 0x0

    #@b1
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@b3
    .line 534
    const/4 v3, 0x0

    #@b4
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@b6
    .line 535
    const/4 v3, 0x0

    #@b7
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@b9
    .line 536
    const/4 v3, 0x0

    #@ba
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@bc
    .line 537
    const/4 v3, 0x0

    #@bd
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@bf
    .line 538
    const/4 v3, 0x0

    #@c0
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@c2
    .line 539
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    #@c4
    .line 540
    move-wide/from16 v0, p3

    #@c6
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    #@c8
    .line 541
    const/4 v3, 0x0

    #@c9
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    #@cb
    .line 542
    const/4 v3, 0x0

    #@cc
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@ce
    .line 543
    const/4 v3, 0x0

    #@cf
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@d1
    .line 544
    const/4 v3, 0x0

    #@d2
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@d4
    .line 546
    return-object v2
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    #@0
    .prologue
    .line 559
    const/16 v19, 0x0

    #@2
    .local v19, "result":Landroid/net/Uri;
    move-object/from16 v5, p0

    #@4
    move-object/from16 v6, p1

    #@6
    move-object/from16 v7, p2

    #@8
    move-wide/from16 v8, p3

    #@a
    move-wide/from16 v10, p5

    #@c
    move/from16 v12, p7

    #@e
    move/from16 v13, p9

    #@10
    .line 562
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    #@13
    move-result-object v5

    #@14
    .line 565
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    if-nez v5, :cond_0

    #@16
    .line 566
    const/4 v4, 0x0

    #@17
    return-object v4

    #@18
    .line 572
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@1c
    invoke-static {v4}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 573
    const-wide/16 v12, 0x0

    #@24
    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@26
    .line 576
    :cond_1
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@28
    if-eqz v4, :cond_5

    #@2a
    .line 577
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2e
    invoke-static {v4}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_2

    #@34
    .line 578
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3a
    invoke-static {v11}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@43
    move-result v4

    #@44
    .line 577
    if-nez v4, :cond_4

    #@46
    .line 579
    :cond_2
    move-object/from16 v0, p0

    #@48
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@4a
    invoke-static {v4}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    #@4d
    move-result v4

    #@4e
    if-nez v4, :cond_3

    #@50
    .line 580
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@56
    invoke-static {v11}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@59
    move-result-object v11

    #@5a
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@5f
    move-result v4

    #@60
    .line 577
    if-nez v4, :cond_4

    #@62
    .line 581
    :cond_3
    move-object/from16 v0, p0

    #@64
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@66
    invoke-static {v4}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_5

    #@6c
    .line 582
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@72
    invoke-static {v11}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    move-object/from16 v0, p0

    #@78
    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@7b
    move-result v4

    #@7c
    .line 576
    if-eqz v4, :cond_5

    #@7e
    .line 583
    :cond_4
    const-string/jumbo v4, "MediaScanner"

    #@81
    new-instance v11, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v12, "forcing rescan of "

    #@89
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v11

    #@8d
    iget-object v12, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@8f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v11

    #@93
    .line 584
    const-string/jumbo v12, "since ringtone setting didn\'t finish"

    #@96
    .line 583
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v11

    #@9a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v11

    #@9e
    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 585
    const/16 p8, 0x1

    #@a3
    .line 589
    .end local p8    # "scanAlways":Z
    :cond_5
    if-eqz v5, :cond_7

    #@a5
    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@a7
    if-nez v4, :cond_6

    #@a9
    if-eqz p8, :cond_7

    #@ab
    .line 590
    :cond_6
    if-eqz p9, :cond_8

    #@ad
    .line 591
    const/4 v6, 0x0

    #@ae
    const/4 v7, 0x0

    #@af
    const/4 v8, 0x0

    #@b0
    const/4 v9, 0x0

    #@b1
    const/4 v10, 0x0

    #@b2
    move-object/from16 v4, p0

    #@b4
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    #@b7
    move-result-object v19

    #@b8
    .line 627
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v19    # "result":Landroid/net/Uri;
    :cond_7
    :goto_0
    return-object v19

    #@b9
    .line 593
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v19    # "result":Landroid/net/Uri;
    :cond_8
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@bb
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c0
    move-result-object v18

    #@c1
    .line 594
    .local v18, "lowpath":Ljava/lang/String;
    const-string/jumbo v4, "/ringtones/"

    #@c4
    move-object/from16 v0, v18

    #@c6
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c9
    move-result v4

    #@ca
    if-lez v4, :cond_f

    #@cc
    const/4 v6, 0x1

    #@cd
    .line 595
    .local v6, "ringtones":Z
    :goto_1
    const-string/jumbo v4, "/notifications/"

    #@d0
    move-object/from16 v0, v18

    #@d2
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d5
    move-result v4

    #@d6
    if-lez v4, :cond_10

    #@d8
    const/4 v7, 0x1

    #@d9
    .line 596
    .local v7, "notifications":Z
    :goto_2
    const-string/jumbo v4, "/alarms/"

    #@dc
    move-object/from16 v0, v18

    #@de
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e1
    move-result v4

    #@e2
    if-lez v4, :cond_11

    #@e4
    const/4 v8, 0x1

    #@e5
    .line 597
    .local v8, "alarms":Z
    :goto_3
    const-string/jumbo v4, "/podcasts/"

    #@e8
    move-object/from16 v0, v18

    #@ea
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@ed
    move-result v4

    #@ee
    if-lez v4, :cond_12

    #@f0
    const/4 v10, 0x1

    #@f1
    .line 598
    .local v10, "podcasts":Z
    :goto_4
    const-string/jumbo v4, "/music/"

    #@f4
    move-object/from16 v0, v18

    #@f6
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f9
    move-result v4

    #@fa
    if-gtz v4, :cond_13

    #@fc
    .line 599
    if-nez v6, :cond_9

    #@fe
    if-eqz v7, :cond_14

    #@100
    :cond_9
    const/4 v9, 0x0

    #@101
    .line 601
    .local v9, "music":Z
    :goto_5
    move-object/from16 v0, p0

    #@103
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@105
    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@108
    move-result v15

    #@109
    .line 602
    .local v15, "isaudio":Z
    move-object/from16 v0, p0

    #@10b
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@10d
    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@110
    move-result v17

    #@111
    .line 603
    .local v17, "isvideo":Z
    move-object/from16 v0, p0

    #@113
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@115
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@118
    move-result v16

    #@119
    .line 605
    .local v16, "isimage":Z
    if-nez v15, :cond_a

    #@11b
    if-nez v17, :cond_a

    #@11d
    if-eqz v16, :cond_b

    #@11f
    .line 606
    :cond_a
    new-instance v4, Ljava/io/File;

    #@121
    move-object/from16 v0, p1

    #@123
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@126
    invoke-static {v4}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    #@129
    move-result-object v4

    #@12a
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@12d
    move-result-object p1

    #@12e
    .line 611
    :cond_b
    if-nez v15, :cond_c

    #@130
    if-eqz v17, :cond_d

    #@132
    .line 612
    :cond_c
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@136
    move-object/from16 v0, p1

    #@138
    move-object/from16 v1, p2

    #@13a
    move-object/from16 v2, p0

    #@13c
    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->-wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    #@13f
    .line 615
    :cond_d
    if-eqz v16, :cond_e

    #@141
    .line 616
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    #@144
    :cond_e
    move-object/from16 v4, p0

    #@146
    .line 619
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@149
    move-result-object v19

    #@14a
    .local v19, "result":Landroid/net/Uri;
    goto/16 :goto_0

    #@14c
    .line 594
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v15    # "isaudio":Z
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    .local v19, "result":Landroid/net/Uri;
    :cond_f
    const/4 v6, 0x0

    #@14d
    .restart local v6    # "ringtones":Z
    goto :goto_1

    #@14e
    .line 595
    :cond_10
    const/4 v7, 0x0

    #@14f
    .restart local v7    # "notifications":Z
    goto :goto_2

    #@150
    .line 596
    :cond_11
    const/4 v8, 0x0

    #@151
    .restart local v8    # "alarms":Z
    goto :goto_3

    #@152
    .line 597
    :cond_12
    const/4 v10, 0x0

    #@153
    .restart local v10    # "podcasts":Z
    goto :goto_4

    #@154
    .line 598
    :cond_13
    const/4 v9, 0x1

    #@155
    .restart local v9    # "music":Z
    goto :goto_5

    #@156
    .line 599
    .end local v9    # "music":Z
    :cond_14
    if-nez v8, :cond_9

    #@158
    if-nez v10, :cond_9

    #@15a
    const/4 v9, 0x1

    #@15b
    .restart local v9    # "music":Z
    goto :goto_5

    #@15c
    .line 622
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v18    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v14

    #@15d
    .line 623
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    #@160
    const-string/jumbo v11, "RemoteException in MediaScanner.scanFile()"

    #@163
    invoke-static {v4, v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@166
    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "genreTagValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v12, 0xff

    #@2
    const/16 v11, 0x29

    #@4
    const/4 v10, 0x0

    #@5
    .line 724
    if-nez p1, :cond_0

    #@7
    .line 725
    return-object v10

    #@8
    .line 727
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    .line 729
    .local v5, "length":I
    if-lez v5, :cond_6

    #@e
    .line 730
    const/4 v7, 0x0

    #@f
    .line 731
    .local v7, "parenthesized":Z
    new-instance v6, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    .line 732
    .local v6, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@15
    .line 733
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    #@17
    .line 734
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 735
    .local v0, "c":C
    if-nez v4, :cond_1

    #@1d
    const/16 v9, 0x28

    #@1f
    if-ne v0, v9, :cond_1

    #@21
    .line 736
    const/4 v7, 0x1

    #@22
    .line 733
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 737
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_2

    #@2b
    .line 738
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2e
    goto :goto_1

    #@2f
    .line 743
    .end local v0    # "c":C
    :cond_2
    if-ge v4, v5, :cond_4

    #@31
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    .line 744
    :goto_2
    if-eqz v7, :cond_5

    #@37
    if-ne v1, v11, :cond_5

    #@39
    .line 747
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@40
    move-result v3

    #@41
    .line 748
    .local v3, "genreIndex":S
    if-ltz v3, :cond_6

    #@43
    .line 749
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    array-length v9, v9

    #@48
    if-ge v3, v9, :cond_7

    #@4a
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    aget-object v9, v9, v3

    #@50
    if-eqz v9, :cond_7

    #@52
    .line 750
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    aget-object v9, v9, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    return-object v9

    #@59
    .line 743
    .end local v3    # "genreIndex":S
    :cond_4
    const/16 v1, 0x20

    #@5b
    .local v1, "charAfterNumber":C
    goto :goto_2

    #@5c
    .line 745
    .end local v1    # "charAfterNumber":C
    :cond_5
    if-nez v7, :cond_6

    #@5e
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@61
    move-result v9

    #@62
    .line 744
    if-nez v9, :cond_3

    #@64
    .line 773
    .end local v4    # "i":I
    .end local v6    # "number":Ljava/lang/StringBuffer;
    .end local v7    # "parenthesized":Z
    :cond_6
    :goto_3
    return-object p1

    #@65
    .line 751
    .restart local v3    # "genreIndex":S
    .restart local v4    # "i":I
    .restart local v6    # "number":Ljava/lang/StringBuffer;
    .restart local v7    # "parenthesized":Z
    :cond_7
    if-ne v3, v12, :cond_8

    #@67
    .line 752
    return-object v10

    #@68
    .line 753
    :cond_8
    if-ge v3, v12, :cond_a

    #@6a
    add-int/lit8 v9, v4, 0x1

    #@6c
    if-ge v9, v5, :cond_a

    #@6e
    .line 756
    if-eqz v7, :cond_9

    #@70
    if-ne v1, v11, :cond_9

    #@72
    .line 757
    add-int/lit8 v4, v4, 0x1

    #@74
    .line 759
    :cond_9
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    .line 760
    .local v8, "ret":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_6

    #@82
    .line 761
    return-object v8

    #@83
    .line 765
    .end local v8    # "ret":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@86
    move-result-object v9

    #@87
    return-object v9

    #@88
    .line 768
    .end local v3    # "genreIndex":S
    :catch_0
    move-exception v2

    #@89
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 649
    const-string/jumbo v3, "title"

    #@5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    const-string/jumbo v3, "title;"

    #@e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 653
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@16
    .line 648
    :cond_1
    :goto_0
    return-void

    #@17
    .line 654
    :cond_2
    const-string/jumbo v3, "artist"

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_3

    #@20
    const-string/jumbo v3, "artist;"

    #@23
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 655
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@2f
    goto :goto_0

    #@30
    .line 656
    :cond_4
    const-string/jumbo v3, "albumartist"

    #@33
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_5

    #@39
    const-string/jumbo v3, "albumartist;"

    #@3c
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_5

    #@42
    .line 657
    const-string/jumbo v3, "band"

    #@45
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    .line 656
    if-nez v3, :cond_5

    #@4b
    .line 657
    const-string/jumbo v3, "band;"

    #@4e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    .line 656
    if-eqz v3, :cond_6

    #@54
    .line 658
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@5a
    goto :goto_0

    #@5b
    .line 659
    :cond_6
    const-string/jumbo v3, "album"

    #@5e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v3

    #@62
    if-nez v3, :cond_7

    #@64
    const-string/jumbo v3, "album;"

    #@67
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_8

    #@6d
    .line 660
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@73
    goto :goto_0

    #@74
    .line 661
    :cond_8
    const-string/jumbo v3, "composer"

    #@77
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7a
    move-result v3

    #@7b
    if-nez v3, :cond_9

    #@7d
    const-string/jumbo v3, "composer;"

    #@80
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_a

    #@86
    .line 662
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@8c
    goto :goto_0

    #@8d
    .line 663
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@8f
    invoke-static {v3}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_c

    #@95
    .line 664
    const-string/jumbo v3, "genre"

    #@98
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9b
    move-result v3

    #@9c
    if-nez v3, :cond_b

    #@9e
    const-string/jumbo v3, "genre;"

    #@a1
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a4
    move-result v3

    #@a5
    .line 663
    if-eqz v3, :cond_c

    #@a7
    .line 665
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@ad
    goto/16 :goto_0

    #@af
    .line 666
    :cond_c
    const-string/jumbo v3, "year"

    #@b2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b5
    move-result v3

    #@b6
    if-nez v3, :cond_d

    #@b8
    const-string/jumbo v3, "year;"

    #@bb
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@be
    move-result v3

    #@bf
    if-eqz v3, :cond_e

    #@c1
    .line 667
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@c4
    move-result v1

    #@c5
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@c7
    goto/16 :goto_0

    #@c9
    .line 668
    :cond_e
    const-string/jumbo v3, "tracknumber"

    #@cc
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@cf
    move-result v3

    #@d0
    if-nez v3, :cond_f

    #@d2
    const-string/jumbo v3, "tracknumber;"

    #@d5
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d8
    move-result v3

    #@d9
    if-eqz v3, :cond_10

    #@db
    .line 671
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@de
    move-result v0

    #@df
    .line 672
    .local v0, "num":I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@e1
    div-int/lit16 v1, v1, 0x3e8

    #@e3
    mul-int/lit16 v1, v1, 0x3e8

    #@e5
    add-int/2addr v1, v0

    #@e6
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@e8
    goto/16 :goto_0

    #@ea
    .line 673
    .end local v0    # "num":I
    :cond_10
    const-string/jumbo v3, "discnumber"

    #@ed
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f0
    move-result v3

    #@f1
    if-nez v3, :cond_11

    #@f3
    .line 674
    const-string/jumbo v3, "set"

    #@f6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v3

    #@fa
    .line 673
    if-nez v3, :cond_11

    #@fc
    .line 674
    const-string/jumbo v3, "set;"

    #@ff
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@102
    move-result v3

    #@103
    .line 673
    if-eqz v3, :cond_12

    #@105
    .line 677
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@108
    move-result v0

    #@109
    .line 678
    .restart local v0    # "num":I
    mul-int/lit16 v1, v0, 0x3e8

    #@10b
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@10d
    rem-int/lit16 v2, v2, 0x3e8

    #@10f
    add-int/2addr v1, v2

    #@110
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@112
    goto/16 :goto_0

    #@114
    .line 679
    .end local v0    # "num":I
    :cond_12
    const-string/jumbo v3, "duration"

    #@117
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11a
    move-result v3

    #@11b
    if-eqz v3, :cond_13

    #@11d
    .line 680
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@120
    move-result v1

    #@121
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@123
    goto/16 :goto_0

    #@125
    .line 681
    :cond_13
    const-string/jumbo v3, "writer"

    #@128
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12b
    move-result v3

    #@12c
    if-nez v3, :cond_14

    #@12e
    const-string/jumbo v3, "writer;"

    #@131
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@134
    move-result v3

    #@135
    if-eqz v3, :cond_15

    #@137
    .line 682
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    #@13d
    goto/16 :goto_0

    #@13f
    .line 683
    :cond_15
    const-string/jumbo v3, "compilation"

    #@142
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@145
    move-result v3

    #@146
    if-eqz v3, :cond_16

    #@148
    .line 684
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@14b
    move-result v1

    #@14c
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@14e
    goto/16 :goto_0

    #@150
    .line 685
    :cond_16
    const-string/jumbo v3, "isdrm"

    #@153
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@156
    move-result v3

    #@157
    if-eqz v3, :cond_18

    #@159
    .line 686
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@15c
    move-result v3

    #@15d
    if-ne v3, v1, :cond_17

    #@15f
    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@161
    goto/16 :goto_0

    #@163
    :cond_17
    move v1, v2

    #@164
    goto :goto_1

    #@165
    .line 687
    :cond_18
    const-string/jumbo v1, "width"

    #@168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16b
    move-result v1

    #@16c
    if-eqz v1, :cond_19

    #@16e
    .line 688
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@171
    move-result v1

    #@172
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@174
    goto/16 :goto_0

    #@176
    .line 689
    :cond_19
    const-string/jumbo v1, "height"

    #@179
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17c
    move-result v1

    #@17d
    if-eqz v1, :cond_1

    #@17f
    .line 690
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@182
    move-result v1

    #@183
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@185
    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    #@0
    .prologue
    .line 554
    const/4 v3, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-wide v4, p2

    #@5
    move-wide/from16 v6, p4

    #@7
    move/from16 v8, p6

    #@9
    move/from16 v10, p7

    #@b
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    #@e
    .line 551
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 789
    const-string/jumbo v0, "audio/mp4"

    #@3
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 790
    const-string/jumbo v0, "video"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 789
    if-eqz v0, :cond_0

    #@14
    .line 794
    return-void

    #@15
    .line 796
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@17
    .line 797
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@1d
    .line 788
    return-void
.end method

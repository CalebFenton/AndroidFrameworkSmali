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

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

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
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    #@0
    .prologue
    .line 495
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 496
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@7
    const-string/jumbo v1, "yyyyMMdd\'T\'HHmmss"

    #@a
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@d
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    #@f
    .line 497
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    #@11
    const-string/jumbo v1, "UTC"

    #@14
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1b
    .line 495
    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    #@0
    .prologue
    .line 741
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 742
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 743
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 745
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
    .line 746
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
    .line 1107
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, 0x1

    #@9
    .line 1108
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    .line 1109
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 1110
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
    .line 1109
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
    .line 908
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
    .line 909
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
    .line 912
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    #@23
    move-result-object v28

    #@24
    .line 913
    .local v28, "values":Landroid/content/ContentValues;
    const-string/jumbo v29, "title"

    #@27
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v25

    #@2b
    .line 914
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
    .line 915
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
    .line 916
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
    .line 918
    :cond_3
    const-string/jumbo v29, "album"

    #@51
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 919
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
    .line 920
    const-string/jumbo v29, "_data"

    #@63
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    .line 922
    const/16 v29, 0x2f

    #@69
    move/from16 v0, v29

    #@6b
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@6e
    move-result v15

    #@6f
    .line 923
    .local v15, "lastSlash":I
    if-ltz v15, :cond_5

    #@71
    .line 924
    const/16 v20, 0x0

    #@73
    .line 926
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
    .line 927
    .local v13, "idx":I
    if-ltz v13, :cond_4

    #@81
    if-lt v13, v15, :cond_13

    #@83
    .line 932
    :cond_4
    if-eqz v20, :cond_5

    #@85
    .line 933
    add-int/lit8 v29, v20, 0x1

    #@87
    move/from16 v0, v29

    #@89
    invoke-virtual {v6, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 934
    const-string/jumbo v29, "album"

    #@90
    move-object/from16 v0, v28

    #@92
    move-object/from16 v1, v29

    #@94
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@97
    .line 938
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
    .line 939
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
    .line 944
    :cond_6
    const-string/jumbo v29, "is_ringtone"

    #@be
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c1
    move-result-object v30

    #@c2
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@c5
    .line 945
    const-string/jumbo v29, "is_notification"

    #@c8
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@cb
    move-result-object v30

    #@cc
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@cf
    .line 946
    const-string/jumbo v29, "is_alarm"

    #@d2
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d5
    move-result-object v30

    #@d6
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@d9
    .line 947
    const-string/jumbo v29, "is_music"

    #@dc
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@df
    move-result-object v30

    #@e0
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@e3
    .line 948
    const-string/jumbo v29, "is_podcast"

    #@e6
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e9
    move-result-object v30

    #@ea
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@ed
    .line 1002
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
    .line 1003
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
    .line 1004
    .local v14, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    #@103
    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@105
    move/from16 v29, v0

    #@107
    if-nez v29, :cond_8

    #@109
    .line 1005
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
    .line 1006
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
    .line 1013
    :cond_8
    :goto_2
    const/16 v21, 0x0

    #@121
    .line 1014
    .local v21, "result":Landroid/net/Uri;
    const/16 v18, 0x0

    #@123
    .line 1018
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
    .line 1023
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
    .line 1028
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
    .line 1035
    :cond_b
    :goto_3
    const-wide/16 v30, 0x0

    #@14f
    cmp-long v29, v22, v30

    #@151
    if-nez v29, :cond_23

    #@153
    .line 1036
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
    .line 1037
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
    .line 1039
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
    .line 1040
    move-object/from16 v0, p1

    #@185
    iget v12, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    #@187
    .line 1041
    .local v12, "format":I
    if-nez v12, :cond_d

    #@189
    .line 1042
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
    .line 1044
    :cond_d
    const-string/jumbo v29, "format"

    #@19c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19f
    move-result-object v30

    #@1a0
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1a3
    .line 1051
    .end local v12    # "format":I
    :cond_e
    if-eqz v14, :cond_f

    #@1a5
    if-eqz v18, :cond_21

    #@1a7
    .line 1052
    :cond_f
    if-eqz v14, :cond_10

    #@1a9
    .line 1053
    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    #@1ac
    .line 1055
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
    .line 1062
    .end local v21    # "result":Landroid/net/Uri;
    :goto_4
    if-eqz v21, :cond_11

    #@1c2
    .line 1063
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@1c5
    move-result-wide v22

    #@1c6
    .line 1064
    move-wide/from16 v0, v22

    #@1c8
    move-object/from16 v2, p1

    #@1ca
    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@1cc
    .line 1090
    :cond_11
    :goto_5
    if-eqz v18, :cond_12

    #@1ce
    .line 1091
    if-eqz p3, :cond_29

    #@1d0
    .line 1092
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
    .line 1093
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
    .line 1103
    :cond_12
    :goto_6
    return-object v21

    #@1ea
    .line 930
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
    .line 949
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
    .line 950
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
    .line 949
    if-eqz v29, :cond_7

    #@208
    .line 950
    :cond_15
    move-object/from16 v0, p0

    #@20a
    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@20c
    move/from16 v29, v0

    #@20e
    if-nez v29, :cond_7

    #@210
    .line 951
    const/4 v9, 0x0

    #@211
    .line 953
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
    .line 957
    .end local v10    # "exif":Landroid/media/ExifInterface;
    :goto_7
    if-eqz v9, :cond_7

    #@221
    .line 958
    const/16 v29, 0x2

    #@223
    move/from16 v0, v29

    #@225
    new-array v0, v0, [F

    #@227
    move-object/from16 v16, v0

    #@229
    .line 959
    .local v16, "latlng":[F
    move-object/from16 v0, v16

    #@22b
    invoke-virtual {v9, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    #@22e
    move-result v29

    #@22f
    if-eqz v29, :cond_16

    #@231
    .line 960
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
    .line 961
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
    .line 964
    :cond_16
    invoke-virtual {v9}, Landroid/media/ExifInterface;->getGpsDateTime()J

    #@250
    move-result-wide v26

    #@251
    .line 965
    .local v26, "time":J
    const-wide/16 v30, -0x1

    #@253
    cmp-long v29, v26, v30

    #@255
    if-eqz v29, :cond_18

    #@257
    .line 966
    const-string/jumbo v29, "datetaken"

    #@25a
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25d
    move-result-object v30

    #@25e
    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@261
    .line 979
    :cond_17
    :goto_8
    const-string/jumbo v29, "Orientation"

    #@264
    const/16 v30, -0x1

    #@266
    .line 978
    move-object/from16 v0, v29

    #@268
    move/from16 v1, v30

    #@26a
    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@26d
    move-result v19

    #@26e
    .line 980
    .local v19, "orientation":I
    const/16 v29, -0x1

    #@270
    move/from16 v0, v19

    #@272
    move/from16 v1, v29

    #@274
    if-eq v0, v1, :cond_7

    #@276
    .line 983
    packed-switch v19, :pswitch_data_0

    #@279
    .line 994
    :pswitch_0
    const/4 v7, 0x0

    #@27a
    .line 997
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
    .line 972
    .end local v7    # "degree":I
    .end local v19    # "orientation":I
    :cond_18
    invoke-virtual {v9}, Landroid/media/ExifInterface;->getDateTime()J

    #@289
    move-result-wide v26

    #@28a
    .line 973
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
    .line 974
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
    .line 985
    .restart local v19    # "orientation":I
    :pswitch_1
    const/16 v7, 0x5a

    #@2b4
    .line 986
    .restart local v7    # "degree":I
    goto :goto_9

    #@2b5
    .line 988
    .end local v7    # "degree":I
    :pswitch_2
    const/16 v7, 0xb4

    #@2b7
    .line 989
    .restart local v7    # "degree":I
    goto :goto_9

    #@2b8
    .line 991
    .end local v7    # "degree":I
    :pswitch_3
    const/16 v7, 0x10e

    #@2ba
    .line 992
    .restart local v7    # "degree":I
    goto :goto_9

    #@2bb
    .line 1007
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
    .line 1008
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
    .line 1009
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
    .line 1010
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
    .line 1019
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
    .line 1020
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
    .line 1019
    if-eqz v29, :cond_b

    #@317
    .line 1021
    :cond_1c
    const/16 v18, 0x1

    #@319
    goto/16 :goto_3

    #@31b
    .line 1024
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
    .line 1025
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
    .line 1024
    if-eqz v29, :cond_b

    #@347
    .line 1026
    :cond_1e
    const/16 v18, 0x1

    #@349
    goto/16 :goto_3

    #@34b
    .line 1029
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
    .line 1030
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
    .line 1029
    if-eqz v29, :cond_b

    #@377
    .line 1031
    :cond_20
    const/16 v18, 0x1

    #@379
    goto/16 :goto_3

    #@37b
    .line 1056
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
    .line 1057
    move-object/from16 v0, v24

    #@38b
    move-object/from16 v1, v28

    #@38d
    invoke-virtual {v14, v0, v1}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@390
    goto/16 :goto_4

    #@392
    .line 1059
    :cond_22
    move-object/from16 v0, v24

    #@394
    move-object/from16 v1, v28

    #@396
    invoke-virtual {v14, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@399
    goto/16 :goto_4

    #@39b
    .line 1068
    :cond_23
    move-object/from16 v0, v24

    #@39d
    move-wide/from16 v1, v22

    #@39f
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@3a2
    move-result-object v21

    #@3a3
    .line 1071
    .local v21, "result":Landroid/net/Uri;
    const-string/jumbo v29, "_data"

    #@3a6
    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    #@3a9
    .line 1073
    const/16 v17, 0x0

    #@3ab
    .line 1074
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
    .line 1075
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
    .line 1076
    .local v11, "fileType":I
    invoke-static {v11}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@3c4
    move-result v29

    #@3c5
    if-eqz v29, :cond_26

    #@3c7
    .line 1077
    const/16 v17, 0x2

    #@3c9
    .line 1085
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
    .line 1087
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
    .line 1078
    .restart local v11    # "fileType":I
    :cond_26
    invoke-static {v11}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@3f3
    move-result v29

    #@3f4
    if-eqz v29, :cond_27

    #@3f6
    .line 1079
    const/16 v17, 0x3

    #@3f8
    goto :goto_a

    #@3f9
    .line 1080
    :cond_27
    invoke-static {v11}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@3fc
    move-result v29

    #@3fd
    if-eqz v29, :cond_28

    #@3ff
    .line 1081
    const/16 v17, 0x1

    #@401
    goto :goto_a

    #@402
    .line 1082
    :cond_28
    invoke-static {v11}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@405
    move-result v29

    #@406
    if-eqz v29, :cond_24

    #@408
    .line 1083
    const/16 v17, 0x4

    #@40a
    goto :goto_a

    #@40b
    .line 1094
    .end local v11    # "fileType":I
    .end local v17    # "mediaType":I
    .end local v21    # "result":Landroid/net/Uri;
    :cond_29
    if-eqz p2, :cond_2a

    #@40d
    .line 1095
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
    .line 1096
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
    .line 1097
    :cond_2a
    if-eqz p4, :cond_12

    #@42a
    .line 1098
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
    .line 1099
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
    .line 954
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
    .line 983
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
    .line 1130
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3
    invoke-static {v2}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1131
    const/4 v2, 0x0

    #@a
    return v2

    #@b
    .line 1134
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 1136
    .local v1, "resultFileType":I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@e
    invoke-static {v2}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 1137
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
    .line 1140
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
    .line 1141
    const/4 v2, 0x1

    #@31
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@33
    .line 1142
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
    .line 1143
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3f
    .line 1144
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@41
    .line 1145
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@44
    move-result v1

    #@45
    .line 1148
    .end local v0    # "drmMimetype":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    #@0
    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    #@2
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 667
    :catch_0
    move-exception v0

    #@c
    .line 668
    .local v0, "e":Ljava/text/ParseException;
    const-wide/16 v2, 0x0

    #@e
    return-wide v2
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
    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 674
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    #@a
    return p3

    #@b
    .line 676
    :cond_0
    add-int/lit8 v3, p2, 0x1

    #@d
    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 678
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    #@13
    if-le v0, v7, :cond_2

    #@15
    :cond_1
    return p3

    #@16
    .line 680
    :cond_2
    add-int/lit8 v2, v0, -0x30

    #@18
    .line 681
    .local v2, "result":I
    :goto_0
    if-ge v3, v1, :cond_5

    #@1a
    .line 682
    add-int/lit8 p2, v3, 0x1

    #@1c
    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v0

    #@20
    .line 683
    if-lt v0, v6, :cond_3

    #@22
    if-le v0, v7, :cond_4

    #@24
    :cond_3
    return v2

    #@25
    .line 684
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
    .line 687
    :cond_5
    return v2
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 822
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
    .line 823
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
    .line 824
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@14
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@17
    move-result-object v1

    #@18
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1b
    .line 825
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
    .line 826
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
    .line 820
    :goto_0
    return-void

    #@30
    .line 827
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
    .line 1114
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-static {v4, p1}, Landroid/media/MediaScanner;->-wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 1115
    return-void

    #@9
    .line 1118
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
    .line 1119
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1120
    .local v1, "existingSettingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1121
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v3

    #@21
    .line 1122
    .local v3, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@24
    move-result-object v2

    #@25
    .line 1123
    .local v2, "ringtoneUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@27
    invoke-static {v4}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    #@2a
    move-result-object v4

    #@2b
    .line 1124
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    #@2e
    move-result v5

    #@2f
    .line 1123
    invoke-static {v4, v5, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    #@32
    .line 1126
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    .end local v3    # "settingUri":Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@34
    invoke-static {v4, p1}, Landroid/media/MediaScanner;->-wrap4(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    const/4 v5, 0x1

    #@39
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@3c
    .line 1113
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    #@0
    .prologue
    .line 750
    const-string/jumbo v0, "2"

    #@3
    const-string/jumbo v1, "Country"

    #@6
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    .line 751
    const-string/jumbo v0, "(2)"

    #@c
    const-string/jumbo v1, "Country"

    #@f
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@12
    .line 752
    const-string/jumbo v0, "(2"

    #@15
    const-string/jumbo v1, "(2"

    #@18
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    .line 753
    const-string/jumbo v0, "2 Foo"

    #@1e
    const-string/jumbo v1, "Country"

    #@21
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@24
    .line 754
    const-string/jumbo v0, "(2) Foo"

    #@27
    const-string/jumbo v1, "Country"

    #@2a
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    .line 755
    const-string/jumbo v0, "(2 Foo"

    #@30
    const-string/jumbo v1, "(2 Foo"

    #@33
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    .line 756
    const-string/jumbo v0, "2Foo"

    #@39
    const-string/jumbo v1, "2Foo"

    #@3c
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@3f
    .line 757
    const-string/jumbo v0, "(2)Foo"

    #@42
    const-string/jumbo v1, "Country"

    #@45
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@48
    .line 758
    const-string/jumbo v0, "200 Foo"

    #@4b
    const-string/jumbo v1, "Foo"

    #@4e
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@51
    .line 759
    const-string/jumbo v0, "(200) Foo"

    #@54
    const-string/jumbo v1, "Foo"

    #@57
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@5a
    .line 760
    const-string/jumbo v0, "200Foo"

    #@5d
    const-string/jumbo v1, "200Foo"

    #@60
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@63
    .line 761
    const-string/jumbo v0, "(200)Foo"

    #@66
    const-string/jumbo v1, "Foo"

    #@69
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@6c
    .line 762
    const-string/jumbo v0, "200)Foo"

    #@6f
    const-string/jumbo v1, "200)Foo"

    #@72
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@75
    .line 763
    const-string/jumbo v0, "200) Foo"

    #@78
    const-string/jumbo v1, "200) Foo"

    #@7b
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@7e
    .line 749
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 851
    new-instance v0, Landroid/content/ContentValues;

    #@3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 853
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v2, "_data"

    #@9
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 854
    const-string/jumbo v2, "title"

    #@11
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 855
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
    .line 856
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
    .line 857
    const-string/jumbo v2, "mime_type"

    #@31
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 858
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
    .line 860
    const/4 v1, 0x0

    #@43
    .line 861
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@45
    if-lez v2, :cond_0

    #@47
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@49
    if-lez v2, :cond_0

    #@4b
    .line 862
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
    .line 863
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
    .line 864
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
    .line 867
    .end local v1    # "resolution":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@81
    if-nez v2, :cond_2

    #@83
    .line 868
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@85
    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_5

    #@8b
    .line 869
    const-string/jumbo v3, "artist"

    #@8e
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@90
    if-eqz v2, :cond_3

    #@92
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@97
    move-result v2

    #@98
    if-lez v2, :cond_3

    #@9a
    .line 870
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@9c
    .line 869
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 871
    const-string/jumbo v3, "album"

    #@a2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@a4
    if-eqz v2, :cond_4

    #@a6
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@a8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ab
    move-result v2

    #@ac
    if-lez v2, :cond_4

    #@ae
    .line 872
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@b0
    .line 871
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    .line 873
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
    .line 874
    if-eqz v1, :cond_1

    #@c1
    .line 875
    const-string/jumbo v2, "resolution"

    #@c4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    .line 877
    :cond_1
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    #@c9
    const-wide/16 v4, 0x0

    #@cb
    cmp-long v2, v2, v4

    #@cd
    if-lez v2, :cond_2

    #@cf
    .line 878
    const-string/jumbo v2, "datetaken"

    #@d2
    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    #@d4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d7
    move-result-object v3

    #@d8
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@db
    .line 899
    :cond_2
    :goto_2
    return-object v0

    #@dc
    .line 870
    :cond_3
    const-string/jumbo v2, "<unknown>"

    #@df
    goto :goto_0

    #@e0
    .line 872
    :cond_4
    const-string/jumbo v2, "<unknown>"

    #@e3
    goto :goto_1

    #@e4
    .line 880
    :cond_5
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@e6
    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@e9
    move-result v2

    #@ea
    if-nez v2, :cond_2

    #@ec
    .line 882
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@ee
    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@f1
    move-result v2

    #@f2
    if-eqz v2, :cond_2

    #@f4
    .line 883
    const-string/jumbo v4, "artist"

    #@f7
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@f9
    if-eqz v2, :cond_7

    #@fb
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@fd
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@100
    move-result v2

    #@101
    if-lez v2, :cond_7

    #@103
    .line 884
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@105
    .line 883
    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@108
    .line 885
    const-string/jumbo v4, "album_artist"

    #@10b
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@10d
    if-eqz v2, :cond_8

    #@10f
    .line 886
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@114
    move-result v2

    #@115
    if-lez v2, :cond_8

    #@117
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@119
    .line 885
    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@11c
    .line 887
    const-string/jumbo v3, "album"

    #@11f
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@121
    if-eqz v2, :cond_9

    #@123
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@128
    move-result v2

    #@129
    if-lez v2, :cond_9

    #@12b
    .line 888
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@12d
    .line 887
    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@130
    .line 889
    const-string/jumbo v2, "composer"

    #@133
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@135
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@138
    .line 890
    const-string/jumbo v2, "genre"

    #@13b
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@13d
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@140
    .line 891
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@142
    if-eqz v2, :cond_6

    #@144
    .line 892
    const-string/jumbo v2, "year"

    #@147
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14c
    move-result-object v3

    #@14d
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@150
    .line 894
    :cond_6
    const-string/jumbo v2, "track"

    #@153
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@158
    move-result-object v3

    #@159
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@15c
    .line 895
    const-string/jumbo v2, "duration"

    #@15f
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@164
    move-result-object v3

    #@165
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@168
    .line 896
    const-string/jumbo v2, "compilation"

    #@16b
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@16d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@170
    move-result-object v3

    #@171
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@174
    goto/16 :goto_2

    #@176
    .line 884
    :cond_7
    const-string/jumbo v2, "<unknown>"

    #@179
    goto :goto_3

    #@17a
    :cond_8
    move-object v2, v3

    #@17b
    .line 886
    goto :goto_4

    #@17c
    .line 888
    :cond_9
    const-string/jumbo v2, "<unknown>"

    #@17f
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
    .line 502
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@2
    .line 503
    const/4 v3, 0x0

    #@3
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@5
    .line 504
    move-wide/from16 v0, p5

    #@7
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    #@9
    .line 505
    const/4 v3, 0x0

    #@a
    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@c
    .line 507
    if-nez p7, :cond_3

    #@e
    .line 508
    if-nez p8, :cond_0

    #@10
    invoke-static {p1}, Landroid/media/MediaScanner;->-wrap1(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 509
    const/16 p8, 0x1

    #@18
    .line 511
    .end local p8    # "noMedia":Z
    :cond_0
    move/from16 v0, p8

    #@1a
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@1c
    .line 514
    if-eqz p2, :cond_1

    #@1e
    .line 515
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@21
    move-result v3

    #@22
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@24
    .line 519
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@26
    if-nez v3, :cond_2

    #@28
    .line 520
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@2b
    move-result-object v9

    #@2c
    .line 521
    .local v9, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v9, :cond_2

    #@2e
    .line 522
    iget v3, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@30
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@32
    .line 523
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@34
    if-nez v3, :cond_2

    #@36
    .line 524
    iget-object v3, v9, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    #@38
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@3a
    .line 529
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
    .line 530
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    #@4d
    move-result v3

    #@4e
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@50
    .line 534
    :cond_3
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@52
    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    #@55
    move-result-object v2

    #@56
    .line 536
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v2, :cond_7

    #@58
    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@5a
    sub-long v10, p3, v4

    #@5c
    .line 537
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
    .line 538
    .local v12, "wasModified":Z
    :goto_1
    if-eqz v2, :cond_5

    #@6b
    if-eqz v12, :cond_6

    #@6d
    .line 539
    :cond_5
    if-eqz v12, :cond_9

    #@6f
    .line 540
    move-wide/from16 v0, p3

    #@71
    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@73
    .line 545
    :goto_2
    const/4 v3, 0x1

    #@74
    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@76
    .line 548
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
    .line 549
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@88
    invoke-static {v3}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f
    .line 551
    const/4 v3, 0x0

    #@90
    return-object v3

    #@91
    .line 536
    .end local v10    # "delta":J
    .end local v12    # "wasModified":Z
    :cond_7
    const-wide/16 v10, 0x0

    #@93
    goto :goto_0

    #@94
    .line 537
    .restart local v10    # "delta":J
    :cond_8
    const/4 v12, 0x0

    #@95
    .restart local v12    # "wasModified":Z
    goto :goto_1

    #@96
    .line 542
    :cond_9
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    #@98
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    #@9a
    .line 543
    if-eqz p7, :cond_a

    #@9c
    const/16 v8, 0x3001

    #@9e
    :goto_3
    move-object v5, p1

    #@9f
    move-wide/from16 v6, p3

    #@a1
    .line 542
    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    #@a4
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    #@a5
    .line 543
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_a
    const/4 v8, 0x0

    #@a6
    goto :goto_3

    #@a7
    .line 555
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v3, 0x0

    #@a8
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@aa
    .line 556
    const/4 v3, 0x0

    #@ab
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@ad
    .line 557
    const/4 v3, 0x0

    #@ae
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@b0
    .line 558
    const/4 v3, 0x0

    #@b1
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@b3
    .line 559
    const/4 v3, 0x0

    #@b4
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@b6
    .line 560
    const/4 v3, 0x0

    #@b7
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@b9
    .line 561
    const/4 v3, 0x0

    #@ba
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@bc
    .line 562
    const/4 v3, 0x0

    #@bd
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@bf
    .line 563
    const/4 v3, 0x0

    #@c0
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@c2
    .line 564
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    #@c4
    .line 565
    const-wide/16 v4, 0x0

    #@c6
    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    #@c8
    .line 566
    move-wide/from16 v0, p3

    #@ca
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    #@cc
    .line 567
    const/4 v3, 0x0

    #@cd
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    #@cf
    .line 568
    const/4 v3, 0x0

    #@d0
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@d2
    .line 569
    const/4 v3, 0x0

    #@d3
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@d5
    .line 570
    const/4 v3, 0x0

    #@d6
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@d8
    .line 572
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
    .line 585
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
    .line 588
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    #@13
    move-result-object v5

    #@14
    .line 591
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    if-nez v5, :cond_0

    #@16
    .line 592
    const/4 v4, 0x0

    #@17
    return-object v4

    #@18
    .line 598
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
    .line 599
    const-wide/16 v12, 0x0

    #@24
    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@26
    .line 602
    :cond_1
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@28
    if-eqz v4, :cond_5

    #@2a
    .line 603
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
    .line 604
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
    .line 603
    if-nez v4, :cond_4

    #@46
    .line 605
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
    .line 606
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
    .line 603
    if-nez v4, :cond_4

    #@62
    .line 607
    :cond_3
    move-object/from16 v0, p0

    #@64
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@66
    invoke-static {v4}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_8

    #@6c
    .line 608
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
    .line 603
    if-eqz v4, :cond_8

    #@7e
    .line 609
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
    .line 610
    const-string/jumbo v12, "since ringtone setting didn\'t finish"

    #@96
    .line 609
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
    .line 611
    const/16 p8, 0x1

    #@a3
    .line 623
    .end local p8    # "scanAlways":Z
    :cond_5
    :goto_0
    if-eqz v5, :cond_7

    #@a5
    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@a7
    if-nez v4, :cond_6

    #@a9
    if-eqz p8, :cond_7

    #@ab
    .line 624
    :cond_6
    if-eqz p9, :cond_9

    #@ad
    .line 625
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
    .line 661
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v19    # "result":Landroid/net/Uri;
    :cond_7
    :goto_1
    return-object v19

    #@b9
    .line 612
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v19    # "result":Landroid/net/Uri;
    .restart local p8    # "scanAlways":Z
    :cond_8
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@bb
    invoke-static {v4}, Landroid/media/MediaScanner;->-wrap2(Ljava/lang/String;)Z

    #@be
    move-result v4

    #@bf
    if-eqz v4, :cond_5

    #@c1
    .line 613
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@c3
    invoke-static {}, Landroid/media/MediaScanner;->-get20()Ljava/lang/String;

    #@c6
    move-result-object v11

    #@c7
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v4

    #@cb
    if-nez v4, :cond_5

    #@cd
    .line 616
    const-string/jumbo v4, "MediaScanner"

    #@d0
    new-instance v11, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v12, "forcing rescan of "

    #@d8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v11

    #@dc
    iget-object v12, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@de
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v11

    #@e2
    .line 617
    const-string/jumbo v12, " since build fingerprint changed"

    #@e5
    .line 616
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v11

    #@e9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v11

    #@ed
    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 618
    const/16 p8, 0x1

    #@f2
    .local p8, "scanAlways":Z
    goto :goto_0

    #@f3
    .line 627
    .end local p8    # "scanAlways":Z
    :cond_9
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@fa
    move-result-object v18

    #@fb
    .line 628
    .local v18, "lowpath":Ljava/lang/String;
    const-string/jumbo v4, "/ringtones/"

    #@fe
    move-object/from16 v0, v18

    #@100
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@103
    move-result v4

    #@104
    if-lez v4, :cond_10

    #@106
    const/4 v6, 0x1

    #@107
    .line 629
    .local v6, "ringtones":Z
    :goto_2
    const-string/jumbo v4, "/notifications/"

    #@10a
    move-object/from16 v0, v18

    #@10c
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@10f
    move-result v4

    #@110
    if-lez v4, :cond_11

    #@112
    const/4 v7, 0x1

    #@113
    .line 630
    .local v7, "notifications":Z
    :goto_3
    const-string/jumbo v4, "/alarms/"

    #@116
    move-object/from16 v0, v18

    #@118
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11b
    move-result v4

    #@11c
    if-lez v4, :cond_12

    #@11e
    const/4 v8, 0x1

    #@11f
    .line 631
    .local v8, "alarms":Z
    :goto_4
    const-string/jumbo v4, "/podcasts/"

    #@122
    move-object/from16 v0, v18

    #@124
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@127
    move-result v4

    #@128
    if-lez v4, :cond_13

    #@12a
    const/4 v10, 0x1

    #@12b
    .line 632
    .local v10, "podcasts":Z
    :goto_5
    const-string/jumbo v4, "/music/"

    #@12e
    move-object/from16 v0, v18

    #@130
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@133
    move-result v4

    #@134
    if-gtz v4, :cond_14

    #@136
    .line 633
    if-nez v6, :cond_a

    #@138
    if-eqz v7, :cond_15

    #@13a
    :cond_a
    const/4 v9, 0x0

    #@13b
    .line 635
    .local v9, "music":Z
    :goto_6
    move-object/from16 v0, p0

    #@13d
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@13f
    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@142
    move-result v15

    #@143
    .line 636
    .local v15, "isaudio":Z
    move-object/from16 v0, p0

    #@145
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@147
    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@14a
    move-result v17

    #@14b
    .line 637
    .local v17, "isvideo":Z
    move-object/from16 v0, p0

    #@14d
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@14f
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@152
    move-result v16

    #@153
    .line 639
    .local v16, "isimage":Z
    if-nez v15, :cond_b

    #@155
    if-nez v17, :cond_b

    #@157
    if-eqz v16, :cond_c

    #@159
    .line 640
    :cond_b
    new-instance v4, Ljava/io/File;

    #@15b
    move-object/from16 v0, p1

    #@15d
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@160
    invoke-static {v4}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    #@163
    move-result-object v4

    #@164
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@167
    move-result-object p1

    #@168
    .line 645
    :cond_c
    if-nez v15, :cond_d

    #@16a
    if-eqz v17, :cond_e

    #@16c
    .line 646
    :cond_d
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@170
    move-object/from16 v0, p1

    #@172
    move-object/from16 v1, p2

    #@174
    move-object/from16 v2, p0

    #@176
    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->-wrap6(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    #@179
    .line 649
    :cond_e
    if-eqz v16, :cond_f

    #@17b
    .line 650
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    #@17e
    :cond_f
    move-object/from16 v4, p0

    #@180
    .line 653
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@183
    move-result-object v19

    #@184
    .local v19, "result":Landroid/net/Uri;
    goto/16 :goto_1

    #@186
    .line 628
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v15    # "isaudio":Z
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    .local v19, "result":Landroid/net/Uri;
    :cond_10
    const/4 v6, 0x0

    #@187
    .restart local v6    # "ringtones":Z
    goto :goto_2

    #@188
    .line 629
    :cond_11
    const/4 v7, 0x0

    #@189
    .restart local v7    # "notifications":Z
    goto :goto_3

    #@18a
    .line 630
    :cond_12
    const/4 v8, 0x0

    #@18b
    .restart local v8    # "alarms":Z
    goto :goto_4

    #@18c
    .line 631
    :cond_13
    const/4 v10, 0x0

    #@18d
    .restart local v10    # "podcasts":Z
    goto :goto_5

    #@18e
    .line 632
    :cond_14
    const/4 v9, 0x1

    #@18f
    .restart local v9    # "music":Z
    goto :goto_6

    #@190
    .line 633
    .end local v9    # "music":Z
    :cond_15
    if-nez v8, :cond_a

    #@192
    if-nez v10, :cond_a

    #@194
    const/4 v9, 0x1

    #@195
    .restart local v9    # "music":Z
    goto :goto_6

    #@196
    .line 656
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v18    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v14

    #@197
    .line 657
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    #@19a
    const-string/jumbo v11, "RemoteException in MediaScanner.scanFile()"

    #@19d
    invoke-static {v4, v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a0
    goto/16 :goto_1
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
    .line 768
    if-nez p1, :cond_0

    #@7
    .line 769
    return-object v10

    #@8
    .line 771
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    .line 773
    .local v5, "length":I
    if-lez v5, :cond_6

    #@e
    .line 774
    const/4 v7, 0x0

    #@f
    .line 775
    .local v7, "parenthesized":Z
    new-instance v6, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    .line 776
    .local v6, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@15
    .line 777
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    #@17
    .line 778
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 779
    .local v0, "c":C
    if-nez v4, :cond_1

    #@1d
    const/16 v9, 0x28

    #@1f
    if-ne v0, v9, :cond_1

    #@21
    .line 780
    const/4 v7, 0x1

    #@22
    .line 777
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 781
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_2

    #@2b
    .line 782
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2e
    goto :goto_1

    #@2f
    .line 787
    .end local v0    # "c":C
    :cond_2
    if-ge v4, v5, :cond_4

    #@31
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    .line 788
    :goto_2
    if-eqz v7, :cond_5

    #@37
    if-ne v1, v11, :cond_5

    #@39
    .line 791
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
    .line 792
    .local v3, "genreIndex":S
    if-ltz v3, :cond_6

    #@43
    .line 793
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
    .line 794
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
    .line 787
    .end local v3    # "genreIndex":S
    :cond_4
    const/16 v1, 0x20

    #@5b
    .local v1, "charAfterNumber":C
    goto :goto_2

    #@5c
    .line 789
    .end local v1    # "charAfterNumber":C
    :cond_5
    if-nez v7, :cond_6

    #@5e
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@61
    move-result v9

    #@62
    .line 788
    if-nez v9, :cond_3

    #@64
    .line 817
    .end local v4    # "i":I
    .end local v6    # "number":Ljava/lang/StringBuffer;
    .end local v7    # "parenthesized":Z
    :cond_6
    :goto_3
    return-object p1

    #@65
    .line 795
    .restart local v3    # "genreIndex":S
    .restart local v4    # "i":I
    .restart local v6    # "number":Ljava/lang/StringBuffer;
    .restart local v7    # "parenthesized":Z
    :cond_7
    if-ne v3, v12, :cond_8

    #@67
    .line 796
    return-object v10

    #@68
    .line 797
    :cond_8
    if-ge v3, v12, :cond_a

    #@6a
    add-int/lit8 v9, v4, 0x1

    #@6c
    if-ge v9, v5, :cond_a

    #@6e
    .line 800
    if-eqz v7, :cond_9

    #@70
    if-ne v1, v11, :cond_9

    #@72
    .line 801
    add-int/lit8 v4, v4, 0x1

    #@74
    .line 803
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
    .line 804
    .local v8, "ret":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_6

    #@82
    .line 805
    return-object v8

    #@83
    .line 809
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
    .line 812
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
    .line 691
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
    .line 695
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@16
    .line 690
    :cond_1
    :goto_0
    return-void

    #@17
    .line 696
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
    .line 697
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@2f
    goto :goto_0

    #@30
    .line 698
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
    .line 699
    const-string/jumbo v3, "band"

    #@45
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    .line 698
    if-nez v3, :cond_5

    #@4b
    .line 699
    const-string/jumbo v3, "band;"

    #@4e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    .line 698
    if-eqz v3, :cond_6

    #@54
    .line 700
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@5a
    goto :goto_0

    #@5b
    .line 701
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
    .line 702
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@73
    goto :goto_0

    #@74
    .line 703
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
    .line 704
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@8c
    goto :goto_0

    #@8d
    .line 705
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@8f
    invoke-static {v3}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_c

    #@95
    .line 706
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
    .line 705
    if-eqz v3, :cond_c

    #@a7
    .line 707
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@ad
    goto/16 :goto_0

    #@af
    .line 708
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
    .line 709
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@c4
    move-result v1

    #@c5
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@c7
    goto/16 :goto_0

    #@c9
    .line 710
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
    .line 713
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@de
    move-result v0

    #@df
    .line 714
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
    .line 715
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
    .line 716
    const-string/jumbo v3, "set"

    #@f6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v3

    #@fa
    .line 715
    if-nez v3, :cond_11

    #@fc
    .line 716
    const-string/jumbo v3, "set;"

    #@ff
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@102
    move-result v3

    #@103
    .line 715
    if-eqz v3, :cond_12

    #@105
    .line 719
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@108
    move-result v0

    #@109
    .line 720
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
    .line 721
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
    .line 722
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@120
    move-result v1

    #@121
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@123
    goto/16 :goto_0

    #@125
    .line 723
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
    .line 724
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    #@13d
    goto/16 :goto_0

    #@13f
    .line 725
    :cond_15
    const-string/jumbo v3, "compilation"

    #@142
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@145
    move-result v3

    #@146
    if-eqz v3, :cond_16

    #@148
    .line 726
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@14b
    move-result v1

    #@14c
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@14e
    goto/16 :goto_0

    #@150
    .line 727
    :cond_16
    const-string/jumbo v3, "isdrm"

    #@153
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@156
    move-result v3

    #@157
    if-eqz v3, :cond_18

    #@159
    .line 728
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
    .line 729
    :cond_18
    const-string/jumbo v1, "date"

    #@168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16b
    move-result v1

    #@16c
    if-eqz v1, :cond_19

    #@16e
    .line 730
    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    #@171
    move-result-wide v2

    #@172
    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    #@174
    goto/16 :goto_0

    #@176
    .line 731
    :cond_19
    const-string/jumbo v1, "width"

    #@179
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17c
    move-result v1

    #@17d
    if-eqz v1, :cond_1a

    #@17f
    .line 732
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@182
    move-result v1

    #@183
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@185
    goto/16 :goto_0

    #@187
    .line 733
    :cond_1a
    const-string/jumbo v1, "height"

    #@18a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18d
    move-result v1

    #@18e
    if-eqz v1, :cond_1

    #@190
    .line 734
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@193
    move-result v1

    #@194
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@196
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
    .line 580
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
    .line 577
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 833
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
    .line 834
    const-string/jumbo v0, "video"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 833
    if-eqz v0, :cond_0

    #@14
    .line 838
    return-void

    #@15
    .line 840
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@17
    .line 841
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@1d
    .line 832
    return-void
.end method

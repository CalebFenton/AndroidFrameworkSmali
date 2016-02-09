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
    .line 419
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
    .line 647
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 648
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 649
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 651
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
    .line 652
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
    .line 1011
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, 0x1

    #@9
    .line 1012
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    .line 1013
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 1014
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
    .line 1013
    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 31
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
    .line 811
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@4
    if-eqz v4, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 812
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@14
    move-object/from16 v0, p0

    #@16
    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@18
    .line 815
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    #@1b
    move-result-object v7

    #@1c
    .line 816
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    #@1f
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v30

    #@23
    .line 817
    .local v30, "title":Ljava/lang/String;
    if-eqz v30, :cond_2

    #@25
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_3

    #@2f
    .line 818
    :cond_2
    const-string/jumbo v4, "_data"

    #@32
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v30

    #@3a
    .line 819
    const-string/jumbo v4, "title"

    #@3d
    move-object/from16 v0, v30

    #@3f
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 821
    :cond_3
    const-string/jumbo v4, "album"

    #@45
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    .line 822
    .local v10, "album":Ljava/lang/String;
    const-string/jumbo v4, "<unknown>"

    #@4c
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_5

    #@52
    .line 823
    const-string/jumbo v4, "_data"

    #@55
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v10

    #@59
    .line 825
    const/16 v4, 0x2f

    #@5b
    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@5e
    move-result v19

    #@5f
    .line 826
    .local v19, "lastSlash":I
    if-ltz v19, :cond_5

    #@61
    .line 827
    const/16 v24, 0x0

    #@63
    .line 829
    .local v24, "previousSlash":I
    :goto_0
    const/16 v4, 0x2f

    #@65
    add-int/lit8 v5, v24, 0x1

    #@67
    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(II)I

    #@6a
    move-result v17

    #@6b
    .line 830
    .local v17, "idx":I
    if-ltz v17, :cond_4

    #@6d
    move/from16 v0, v17

    #@6f
    move/from16 v1, v19

    #@71
    if-lt v0, v1, :cond_13

    #@73
    .line 835
    :cond_4
    if-eqz v24, :cond_5

    #@75
    .line 836
    add-int/lit8 v4, v24, 0x1

    #@77
    move/from16 v0, v19

    #@79
    invoke-virtual {v10, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7c
    move-result-object v10

    #@7d
    .line 837
    const-string/jumbo v4, "album"

    #@80
    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    .line 841
    .end local v17    # "idx":I
    .end local v19    # "lastSlash":I
    .end local v24    # "previousSlash":I
    :cond_5
    move-object/from16 v0, p1

    #@85
    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@87
    move-wide/from16 v26, v0

    #@89
    .line 842
    .local v26, "rowId":J
    move-object/from16 v0, p0

    #@8b
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@8d
    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@90
    move-result v4

    #@91
    if-eqz v4, :cond_14

    #@93
    const-wide/16 v4, 0x0

    #@95
    cmp-long v4, v26, v4

    #@97
    if-eqz v4, :cond_6

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@9d
    invoke-static {v4}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@a0
    move-result v4

    #@a1
    if-eqz v4, :cond_14

    #@a3
    .line 847
    :cond_6
    const-string/jumbo v4, "is_ringtone"

    #@a6
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a9
    move-result-object v5

    #@aa
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@ad
    .line 848
    const-string/jumbo v4, "is_notification"

    #@b0
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@b7
    .line 849
    const-string/jumbo v4, "is_alarm"

    #@ba
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@c1
    .line 850
    const-string/jumbo v4, "is_music"

    #@c4
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@cb
    .line 851
    const-string/jumbo v4, "is_podcast"

    #@ce
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@d5
    .line 904
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    #@d7
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@d9
    invoke-static {v4}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@dc
    move-result-object v25

    #@dd
    .line 905
    .local v25, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@df
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@e1
    invoke-static {v4}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    #@e4
    move-result-object v18

    #@e5
    .line 906
    .local v18, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    #@e7
    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@e9
    if-nez v4, :cond_8

    #@eb
    .line 907
    move-object/from16 v0, p0

    #@ed
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@ef
    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@f2
    move-result v4

    #@f3
    if-eqz v4, :cond_18

    #@f5
    .line 908
    move-object/from16 v0, p0

    #@f7
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@f9
    invoke-static {v4}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@fc
    move-result-object v25

    #@fd
    .line 915
    :cond_8
    :goto_2
    const/4 v6, 0x0

    #@fe
    .line 916
    .local v6, "result":Landroid/net/Uri;
    const/16 v22, 0x0

    #@100
    .line 917
    .local v22, "needToSetSettings":Z
    const-wide/16 v4, 0x0

    #@102
    cmp-long v4, v26, v4

    #@104
    if-nez v4, :cond_22

    #@106
    .line 918
    move-object/from16 v0, p0

    #@108
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@10a
    invoke-static {v4}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@10d
    move-result v4

    #@10e
    if-eqz v4, :cond_9

    #@110
    .line 919
    const-string/jumbo v4, "media_scanner_new_object_id"

    #@113
    move-object/from16 v0, p0

    #@115
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@117
    invoke-static {v5}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@11a
    move-result v5

    #@11b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11e
    move-result-object v5

    #@11f
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@122
    .line 921
    :cond_9
    move-object/from16 v0, p0

    #@124
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@126
    invoke-static {v4}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@129
    move-result-object v4

    #@12a
    move-object/from16 v0, v25

    #@12c
    if-ne v0, v4, :cond_b

    #@12e
    .line 922
    move-object/from16 v0, p1

    #@130
    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    #@132
    move/from16 v16, v0

    #@134
    .line 923
    .local v16, "format":I
    if-nez v16, :cond_a

    #@136
    .line 924
    move-object/from16 v0, p1

    #@138
    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@13e
    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    #@141
    move-result v16

    #@142
    .line 926
    :cond_a
    const-string/jumbo v4, "format"

    #@145
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v5

    #@149
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@14c
    .line 931
    .end local v16    # "format":I
    :cond_b
    move-object/from16 v0, p0

    #@14e
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@150
    invoke-static {v4}, Landroid/media/MediaScanner;->-get21(Landroid/media/MediaScanner;)Z

    #@153
    move-result v4

    #@154
    if-eqz v4, :cond_e

    #@156
    .line 932
    if-eqz p3, :cond_c

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@15c
    invoke-static {v4}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Z

    #@15f
    move-result v4

    #@160
    if-eqz v4, :cond_1a

    #@162
    .line 937
    :cond_c
    if-eqz p2, :cond_d

    #@164
    move-object/from16 v0, p0

    #@166
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@168
    invoke-static {v4}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    #@16b
    move-result v4

    #@16c
    if-eqz v4, :cond_1c

    #@16e
    .line 942
    :cond_d
    if-eqz p4, :cond_e

    #@170
    move-object/from16 v0, p0

    #@172
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@174
    invoke-static {v4}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    #@177
    move-result v4

    #@178
    if-eqz v4, :cond_1e

    #@17a
    .line 955
    :cond_e
    :goto_3
    if-eqz v18, :cond_f

    #@17c
    if-eqz v22, :cond_20

    #@17e
    .line 956
    :cond_f
    if-eqz v18, :cond_10

    #@180
    .line 957
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaInserter;->flushAll()V

    #@183
    .line 959
    :cond_10
    move-object/from16 v0, p0

    #@185
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@187
    invoke-static {v4}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    #@18a
    move-result-object v4

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@18f
    invoke-static {v5}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@192
    move-result-object v5

    #@193
    move-object/from16 v0, v25

    #@195
    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@198
    move-result-object v6

    #@199
    .line 966
    .end local v6    # "result":Landroid/net/Uri;
    :goto_4
    if-eqz v6, :cond_11

    #@19b
    .line 967
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@19e
    move-result-wide v26

    #@19f
    .line 968
    move-wide/from16 v0, v26

    #@1a1
    move-object/from16 v2, p1

    #@1a3
    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@1a5
    .line 994
    :cond_11
    :goto_5
    if-eqz v22, :cond_12

    #@1a7
    .line 995
    if-eqz p3, :cond_28

    #@1a9
    .line 996
    const-string/jumbo v4, "notification_sound"

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    move-object/from16 v1, v25

    #@1b0
    move-wide/from16 v2, v26

    #@1b2
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    #@1b5
    .line 997
    move-object/from16 v0, p0

    #@1b7
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@1b9
    const/4 v5, 0x1

    #@1ba
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->-set1(Landroid/media/MediaScanner;Z)Z

    #@1bd
    .line 1007
    :cond_12
    :goto_6
    return-object v6

    #@1be
    .line 833
    .end local v18    # "inserter":Landroid/media/MediaInserter;
    .end local v22    # "needToSetSettings":Z
    .end local v25    # "tableUri":Landroid/net/Uri;
    .end local v26    # "rowId":J
    .restart local v17    # "idx":I
    .restart local v19    # "lastSlash":I
    .restart local v24    # "previousSlash":I
    :cond_13
    move/from16 v24, v17

    #@1c0
    goto/16 :goto_0

    #@1c2
    .line 852
    .end local v17    # "idx":I
    .end local v19    # "lastSlash":I
    .end local v24    # "previousSlash":I
    .restart local v26    # "rowId":J
    :cond_14
    move-object/from16 v0, p0

    #@1c4
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@1c6
    const/16 v5, 0x1f

    #@1c8
    if-ne v4, v5, :cond_7

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@1ce
    if-nez v4, :cond_7

    #@1d0
    .line 853
    const/4 v13, 0x0

    #@1d1
    .line 855
    .local v13, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v14, Landroid/media/ExifInterface;

    #@1d3
    move-object/from16 v0, p1

    #@1d5
    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@1d7
    invoke-direct {v14, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1da
    .end local v13    # "exif":Landroid/media/ExifInterface;
    .local v14, "exif":Landroid/media/ExifInterface;
    move-object v13, v14

    #@1db
    .line 859
    .end local v14    # "exif":Landroid/media/ExifInterface;
    :goto_7
    if-eqz v13, :cond_7

    #@1dd
    .line 860
    const/4 v4, 0x2

    #@1de
    new-array v0, v4, [F

    #@1e0
    move-object/from16 v20, v0

    #@1e2
    .line 861
    .local v20, "latlng":[F
    move-object/from16 v0, v20

    #@1e4
    invoke-virtual {v13, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    #@1e7
    move-result v4

    #@1e8
    if-eqz v4, :cond_15

    #@1ea
    .line 862
    const-string/jumbo v4, "latitude"

    #@1ed
    const/4 v5, 0x0

    #@1ee
    aget v5, v20, v5

    #@1f0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1f3
    move-result-object v5

    #@1f4
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@1f7
    .line 863
    const-string/jumbo v4, "longitude"

    #@1fa
    const/4 v5, 0x1

    #@1fb
    aget v5, v20, v5

    #@1fd
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@200
    move-result-object v5

    #@201
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@204
    .line 866
    :cond_15
    invoke-virtual {v13}, Landroid/media/ExifInterface;->getGpsDateTime()J

    #@207
    move-result-wide v28

    #@208
    .line 867
    .local v28, "time":J
    const-wide/16 v4, -0x1

    #@20a
    cmp-long v4, v28, v4

    #@20c
    if-eqz v4, :cond_17

    #@20e
    .line 868
    const-string/jumbo v4, "datetaken"

    #@211
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@214
    move-result-object v5

    #@215
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@218
    .line 881
    :cond_16
    :goto_8
    const-string/jumbo v4, "Orientation"

    #@21b
    const/4 v5, -0x1

    #@21c
    .line 880
    invoke-virtual {v13, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@21f
    move-result v23

    #@220
    .line 882
    .local v23, "orientation":I
    const/4 v4, -0x1

    #@221
    move/from16 v0, v23

    #@223
    if-eq v0, v4, :cond_7

    #@225
    .line 885
    packed-switch v23, :pswitch_data_0

    #@228
    .line 896
    :pswitch_0
    const/4 v11, 0x0

    #@229
    .line 899
    .local v11, "degree":I
    :goto_9
    const-string/jumbo v4, "orientation"

    #@22c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22f
    move-result-object v5

    #@230
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@233
    goto/16 :goto_1

    #@235
    .line 874
    .end local v11    # "degree":I
    .end local v23    # "orientation":I
    :cond_17
    invoke-virtual {v13}, Landroid/media/ExifInterface;->getDateTime()J

    #@238
    move-result-wide v28

    #@239
    .line 875
    const-wide/16 v4, -0x1

    #@23b
    cmp-long v4, v28, v4

    #@23d
    if-eqz v4, :cond_16

    #@23f
    move-object/from16 v0, p0

    #@241
    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    #@243
    const-wide/16 v8, 0x3e8

    #@245
    mul-long/2addr v4, v8

    #@246
    sub-long v4, v4, v28

    #@248
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    #@24b
    move-result-wide v4

    #@24c
    const-wide/32 v8, 0x5265c00

    #@24f
    cmp-long v4, v4, v8

    #@251
    if-ltz v4, :cond_16

    #@253
    .line 876
    const-string/jumbo v4, "datetaken"

    #@256
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@259
    move-result-object v5

    #@25a
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@25d
    goto :goto_8

    #@25e
    .line 887
    .restart local v23    # "orientation":I
    :pswitch_1
    const/16 v11, 0x5a

    #@260
    .line 888
    .restart local v11    # "degree":I
    goto :goto_9

    #@261
    .line 890
    .end local v11    # "degree":I
    :pswitch_2
    const/16 v11, 0xb4

    #@263
    .line 891
    .restart local v11    # "degree":I
    goto :goto_9

    #@264
    .line 893
    .end local v11    # "degree":I
    :pswitch_3
    const/16 v11, 0x10e

    #@266
    .line 894
    .restart local v11    # "degree":I
    goto :goto_9

    #@267
    .line 909
    .end local v11    # "degree":I
    .end local v20    # "latlng":[F
    .end local v23    # "orientation":I
    .end local v28    # "time":J
    .restart local v18    # "inserter":Landroid/media/MediaInserter;
    .restart local v25    # "tableUri":Landroid/net/Uri;
    :cond_18
    move-object/from16 v0, p0

    #@269
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@26b
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@26e
    move-result v4

    #@26f
    if-eqz v4, :cond_19

    #@271
    .line 910
    move-object/from16 v0, p0

    #@273
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@275
    invoke-static {v4}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@278
    move-result-object v25

    #@279
    goto/16 :goto_2

    #@27b
    .line 911
    :cond_19
    move-object/from16 v0, p0

    #@27d
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@27f
    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@282
    move-result v4

    #@283
    if-eqz v4, :cond_8

    #@285
    .line 912
    move-object/from16 v0, p0

    #@287
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@289
    invoke-static {v4}, Landroid/media/MediaScanner;->-get1(Landroid/media/MediaScanner;)Landroid/net/Uri;

    #@28c
    move-result-object v25

    #@28d
    goto/16 :goto_2

    #@28f
    .line 933
    .restart local v6    # "result":Landroid/net/Uri;
    .restart local v22    # "needToSetSettings":Z
    :cond_1a
    move-object/from16 v0, p0

    #@291
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@293
    invoke-static {v4}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@296
    move-result-object v4

    #@297
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29a
    move-result v4

    #@29b
    if-nez v4, :cond_1b

    #@29d
    .line 934
    move-object/from16 v0, p1

    #@29f
    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2a5
    invoke-static {v5}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@2a8
    move-result-object v5

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@2ae
    move-result v4

    #@2af
    .line 933
    if-eqz v4, :cond_e

    #@2b1
    .line 935
    :cond_1b
    const/16 v22, 0x1

    #@2b3
    goto/16 :goto_3

    #@2b5
    .line 938
    :cond_1c
    move-object/from16 v0, p0

    #@2b7
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2b9
    invoke-static {v4}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@2bc
    move-result-object v4

    #@2bd
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c0
    move-result v4

    #@2c1
    if-nez v4, :cond_1d

    #@2c3
    .line 939
    move-object/from16 v0, p1

    #@2c5
    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2cb
    invoke-static {v5}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@2ce
    move-result-object v5

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d4
    move-result v4

    #@2d5
    .line 938
    if-eqz v4, :cond_e

    #@2d7
    .line 940
    :cond_1d
    const/16 v22, 0x1

    #@2d9
    goto/16 :goto_3

    #@2db
    .line 943
    :cond_1e
    move-object/from16 v0, p0

    #@2dd
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2df
    invoke-static {v4}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@2e2
    move-result-object v4

    #@2e3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2e6
    move-result v4

    #@2e7
    if-nez v4, :cond_1f

    #@2e9
    .line 944
    move-object/from16 v0, p1

    #@2eb
    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2f1
    invoke-static {v5}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@2f4
    move-result-object v5

    #@2f5
    move-object/from16 v0, p0

    #@2f7
    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    #@2fa
    move-result v4

    #@2fb
    .line 943
    if-eqz v4, :cond_e

    #@2fd
    .line 945
    :cond_1f
    const/16 v22, 0x1

    #@2ff
    goto/16 :goto_3

    #@301
    .line 960
    :cond_20
    move-object/from16 v0, p1

    #@303
    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    #@305
    const/16 v5, 0x3001

    #@307
    if-ne v4, v5, :cond_21

    #@309
    .line 961
    move-object/from16 v0, v18

    #@30b
    move-object/from16 v1, v25

    #@30d
    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@310
    goto/16 :goto_4

    #@312
    .line 963
    :cond_21
    move-object/from16 v0, v18

    #@314
    move-object/from16 v1, v25

    #@316
    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@319
    goto/16 :goto_4

    #@31b
    .line 972
    :cond_22
    invoke-static/range {v25 .. v27}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@31e
    move-result-object v6

    #@31f
    .line 975
    .local v6, "result":Landroid/net/Uri;
    const-string/jumbo v4, "_data"

    #@322
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    #@325
    .line 977
    const/16 v21, 0x0

    #@327
    .line 978
    .local v21, "mediaType":I
    move-object/from16 v0, p1

    #@329
    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@32b
    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    #@32e
    move-result v4

    #@32f
    if-nez v4, :cond_24

    #@331
    .line 979
    move-object/from16 v0, p0

    #@333
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@335
    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@338
    move-result v15

    #@339
    .line 980
    .local v15, "fileType":I
    invoke-static {v15}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@33c
    move-result v4

    #@33d
    if-eqz v4, :cond_25

    #@33f
    .line 981
    const/16 v21, 0x2

    #@341
    .line 989
    :cond_23
    :goto_a
    const-string/jumbo v4, "media_type"

    #@344
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@347
    move-result-object v5

    #@348
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@34b
    .line 991
    .end local v15    # "fileType":I
    :cond_24
    move-object/from16 v0, p0

    #@34d
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@34f
    invoke-static {v4}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    #@352
    move-result-object v4

    #@353
    move-object/from16 v0, p0

    #@355
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@357
    invoke-static {v5}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/lang/String;

    #@35a
    move-result-object v5

    #@35b
    const/4 v8, 0x0

    #@35c
    const/4 v9, 0x0

    #@35d
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@360
    goto/16 :goto_5

    #@362
    .line 982
    .restart local v15    # "fileType":I
    :cond_25
    invoke-static {v15}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@365
    move-result v4

    #@366
    if-eqz v4, :cond_26

    #@368
    .line 983
    const/16 v21, 0x3

    #@36a
    goto :goto_a

    #@36b
    .line 984
    :cond_26
    invoke-static {v15}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@36e
    move-result v4

    #@36f
    if-eqz v4, :cond_27

    #@371
    .line 985
    const/16 v21, 0x1

    #@373
    goto :goto_a

    #@374
    .line 986
    :cond_27
    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@377
    move-result v4

    #@378
    if-eqz v4, :cond_23

    #@37a
    .line 987
    const/16 v21, 0x4

    #@37c
    goto :goto_a

    #@37d
    .line 998
    .end local v6    # "result":Landroid/net/Uri;
    .end local v15    # "fileType":I
    .end local v21    # "mediaType":I
    :cond_28
    if-eqz p2, :cond_29

    #@37f
    .line 999
    const-string/jumbo v4, "ringtone"

    #@382
    move-object/from16 v0, p0

    #@384
    move-object/from16 v1, v25

    #@386
    move-wide/from16 v2, v26

    #@388
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    #@38b
    .line 1000
    move-object/from16 v0, p0

    #@38d
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@38f
    const/4 v5, 0x1

    #@390
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->-set2(Landroid/media/MediaScanner;Z)Z

    #@393
    goto/16 :goto_6

    #@395
    .line 1001
    :cond_29
    if-eqz p4, :cond_12

    #@397
    .line 1002
    const-string/jumbo v4, "alarm_alert"

    #@39a
    move-object/from16 v0, p0

    #@39c
    move-object/from16 v1, v25

    #@39e
    move-wide/from16 v2, v26

    #@3a0
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    #@3a3
    .line 1003
    move-object/from16 v0, p0

    #@3a5
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3a7
    const/4 v5, 0x1

    #@3a8
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->-set0(Landroid/media/MediaScanner;Z)Z

    #@3ab
    goto/16 :goto_6

    #@3ad
    .line 856
    .end local v18    # "inserter":Landroid/media/MediaInserter;
    .end local v22    # "needToSetSettings":Z
    .end local v25    # "tableUri":Landroid/net/Uri;
    .restart local v13    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v12

    #@3ae
    .local v12, "ex":Ljava/io/IOException;
    goto/16 :goto_7

    #@3b0
    .line 885
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
    .line 1030
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@3
    invoke-static {v2}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1031
    const/4 v2, 0x0

    #@a
    return v2

    #@b
    .line 1034
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 1036
    .local v1, "resultFileType":I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@e
    invoke-static {v2}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 1037
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
    .line 1040
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
    .line 1041
    const/4 v2, 0x1

    #@31
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@33
    .line 1042
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
    .line 1043
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3f
    .line 1044
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@41
    .line 1045
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@44
    move-result v1

    #@45
    .line 1048
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
    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 582
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    #@a
    return p3

    #@b
    .line 584
    :cond_0
    add-int/lit8 v3, p2, 0x1

    #@d
    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 586
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    #@13
    if-le v0, v7, :cond_2

    #@15
    :cond_1
    return p3

    #@16
    .line 588
    :cond_2
    add-int/lit8 v2, v0, -0x30

    #@18
    .line 589
    .local v2, "result":I
    :goto_0
    if-ge v3, v1, :cond_5

    #@1a
    .line 590
    add-int/lit8 p2, v3, 0x1

    #@1c
    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v0

    #@20
    .line 591
    if-lt v0, v6, :cond_3

    #@22
    if-le v0, v7, :cond_4

    #@24
    :cond_3
    return v2

    #@25
    .line 592
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
    .line 595
    :cond_5
    return v2
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 728
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
    .line 729
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
    .line 730
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@14
    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    #@17
    move-result-object v1

    #@18
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1b
    .line 731
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
    .line 732
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
    .line 726
    :goto_0
    return-void

    #@30
    .line 733
    :catch_0
    move-exception v0

    #@31
    .local v0, "th":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    #@0
    .prologue
    .line 1019
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-static {v1}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1022
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1024
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@16
    invoke-static {v1}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v1

    #@1e
    .line 1025
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1024
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@29
    .line 1017
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    #@0
    .prologue
    .line 656
    const-string/jumbo v0, "2"

    #@3
    const-string/jumbo v1, "Country"

    #@6
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    .line 657
    const-string/jumbo v0, "(2)"

    #@c
    const-string/jumbo v1, "Country"

    #@f
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@12
    .line 658
    const-string/jumbo v0, "(2"

    #@15
    const-string/jumbo v1, "(2"

    #@18
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    .line 659
    const-string/jumbo v0, "2 Foo"

    #@1e
    const-string/jumbo v1, "Country"

    #@21
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@24
    .line 660
    const-string/jumbo v0, "(2) Foo"

    #@27
    const-string/jumbo v1, "Country"

    #@2a
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    .line 661
    const-string/jumbo v0, "(2 Foo"

    #@30
    const-string/jumbo v1, "(2 Foo"

    #@33
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    .line 662
    const-string/jumbo v0, "2Foo"

    #@39
    const-string/jumbo v1, "2Foo"

    #@3c
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@3f
    .line 663
    const-string/jumbo v0, "(2)Foo"

    #@42
    const-string/jumbo v1, "Country"

    #@45
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@48
    .line 664
    const-string/jumbo v0, "200 Foo"

    #@4b
    const-string/jumbo v1, "Foo"

    #@4e
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@51
    .line 665
    const-string/jumbo v0, "(200) Foo"

    #@54
    const-string/jumbo v1, "Foo"

    #@57
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@5a
    .line 666
    const-string/jumbo v0, "200Foo"

    #@5d
    const-string/jumbo v1, "200Foo"

    #@60
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@63
    .line 667
    const-string/jumbo v0, "(200)Foo"

    #@66
    const-string/jumbo v1, "Foo"

    #@69
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@6c
    .line 668
    const-string/jumbo v0, "200)Foo"

    #@6f
    const-string/jumbo v1, "200)Foo"

    #@72
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@75
    .line 669
    const-string/jumbo v0, "200) Foo"

    #@78
    const-string/jumbo v1, "200) Foo"

    #@7b
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    #@7e
    .line 655
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 757
    new-instance v0, Landroid/content/ContentValues;

    #@3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 759
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v2, "_data"

    #@9
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 760
    const-string/jumbo v2, "title"

    #@11
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 761
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
    .line 762
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
    .line 763
    const-string/jumbo v2, "mime_type"

    #@31
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 764
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
    .line 766
    const/4 v1, 0x0

    #@43
    .line 767
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@45
    if-lez v2, :cond_0

    #@47
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@49
    if-lez v2, :cond_0

    #@4b
    .line 768
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
    .line 769
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
    .line 770
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
    .line 773
    .end local v1    # "resolution":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@81
    if-nez v2, :cond_1

    #@83
    .line 774
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@85
    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_4

    #@8b
    .line 775
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
    .line 776
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@9c
    .line 775
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 777
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
    .line 778
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@b0
    .line 777
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    .line 779
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
    .line 780
    if-eqz v1, :cond_1

    #@c1
    .line 781
    const-string/jumbo v2, "resolution"

    #@c4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    .line 802
    :cond_1
    :goto_2
    return-object v0

    #@c8
    .line 776
    :cond_2
    const-string/jumbo v2, "<unknown>"

    #@cb
    goto :goto_0

    #@cc
    .line 778
    :cond_3
    const-string/jumbo v2, "<unknown>"

    #@cf
    goto :goto_1

    #@d0
    .line 783
    :cond_4
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@d2
    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@d5
    move-result v2

    #@d6
    if-nez v2, :cond_1

    #@d8
    .line 785
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@da
    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_1

    #@e0
    .line 786
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
    .line 787
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@f1
    .line 786
    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@f4
    .line 788
    const-string/jumbo v4, "album_artist"

    #@f7
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@f9
    if-eqz v2, :cond_7

    #@fb
    .line 789
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
    .line 788
    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@108
    .line 790
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
    .line 791
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@119
    .line 790
    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@11c
    .line 792
    const-string/jumbo v2, "composer"

    #@11f
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@121
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@124
    .line 793
    const-string/jumbo v2, "genre"

    #@127
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@129
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@12c
    .line 794
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@12e
    if-eqz v2, :cond_5

    #@130
    .line 795
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
    .line 797
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
    .line 798
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
    .line 799
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
    .line 787
    :cond_6
    const-string/jumbo v2, "<unknown>"

    #@165
    goto :goto_3

    #@166
    :cond_7
    move-object v2, v3

    #@167
    .line 789
    goto :goto_4

    #@168
    .line 791
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
    .line 444
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@2
    .line 445
    const/4 v3, 0x0

    #@3
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@5
    .line 446
    move-wide/from16 v0, p5

    #@7
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    #@9
    .line 447
    const/4 v3, 0x0

    #@a
    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    #@c
    .line 449
    if-nez p7, :cond_3

    #@e
    .line 450
    if-nez p8, :cond_0

    #@10
    invoke-static {p1}, Landroid/media/MediaScanner;->-wrap1(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 451
    const/16 p8, 0x1

    #@18
    .line 453
    .end local p8    # "noMedia":Z
    :cond_0
    move/from16 v0, p8

    #@1a
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    #@1c
    .line 456
    if-eqz p2, :cond_1

    #@1e
    .line 457
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@21
    move-result v3

    #@22
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@24
    .line 461
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@26
    if-nez v3, :cond_2

    #@28
    .line 462
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@2b
    move-result-object v9

    #@2c
    .line 463
    .local v9, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v9, :cond_2

    #@2e
    .line 464
    iget v3, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@30
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@32
    .line 465
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@34
    if-nez v3, :cond_2

    #@36
    .line 466
    iget-object v3, v9, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    #@38
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@3a
    .line 471
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
    .line 472
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    #@4d
    move-result v3

    #@4e
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@50
    .line 476
    :cond_3
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@52
    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    #@55
    move-result-object v2

    #@56
    .line 478
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v2, :cond_7

    #@58
    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@5a
    sub-long v10, p3, v4

    #@5c
    .line 479
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
    .line 480
    .local v12, "wasModified":Z
    :goto_1
    if-eqz v2, :cond_5

    #@6b
    if-eqz v12, :cond_6

    #@6d
    .line 481
    :cond_5
    if-eqz v12, :cond_9

    #@6f
    .line 482
    move-wide/from16 v0, p3

    #@71
    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@73
    .line 487
    :goto_2
    const/4 v3, 0x1

    #@74
    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@76
    .line 490
    :cond_6
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@78
    invoke-static {v3}, Landroid/media/MediaScanner;->-get19(Landroid/media/MediaScanner;)Z

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
    .line 491
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@88
    invoke-static {v3}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f
    .line 493
    const/4 v3, 0x0

    #@90
    return-object v3

    #@91
    .line 478
    .end local v10    # "delta":J
    .end local v12    # "wasModified":Z
    :cond_7
    const-wide/16 v10, 0x0

    #@93
    .restart local v10    # "delta":J
    goto :goto_0

    #@94
    .line 479
    :cond_8
    const/4 v12, 0x0

    #@95
    .restart local v12    # "wasModified":Z
    goto :goto_1

    #@96
    .line 484
    :cond_9
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    #@98
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    #@9a
    .line 485
    if-eqz p7, :cond_a

    #@9c
    const/16 v8, 0x3001

    #@9e
    :goto_3
    move-object v5, p1

    #@9f
    move-wide/from16 v6, p3

    #@a1
    .line 484
    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    #@a4
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    #@a5
    .line 485
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_a
    const/4 v8, 0x0

    #@a6
    goto :goto_3

    #@a7
    .line 497
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v3, 0x0

    #@a8
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@aa
    .line 498
    const/4 v3, 0x0

    #@ab
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@ad
    .line 499
    const/4 v3, 0x0

    #@ae
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@b0
    .line 500
    const/4 v3, 0x0

    #@b1
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@b3
    .line 501
    const/4 v3, 0x0

    #@b4
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@b6
    .line 502
    const/4 v3, 0x0

    #@b7
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@b9
    .line 503
    const/4 v3, 0x0

    #@ba
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    #@bc
    .line 504
    const/4 v3, 0x0

    #@bd
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@bf
    .line 505
    const/4 v3, 0x0

    #@c0
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@c2
    .line 506
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    #@c4
    .line 507
    move-wide/from16 v0, p3

    #@c6
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    #@c8
    .line 508
    const/4 v3, 0x0

    #@c9
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    #@cb
    .line 509
    const/4 v3, 0x0

    #@cc
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@ce
    .line 510
    const/4 v3, 0x0

    #@cf
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@d1
    .line 511
    const/4 v3, 0x0

    #@d2
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    #@d4
    .line 513
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
    .line 526
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
    .line 529
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    #@13
    move-result-object v5

    #@14
    .line 535
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@18
    invoke-static {v4}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)I

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 536
    const-wide/16 v12, 0x0

    #@20
    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@22
    .line 539
    :cond_0
    if-eqz v5, :cond_2

    #@24
    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@26
    if-nez v4, :cond_1

    #@28
    if-eqz p8, :cond_2

    #@2a
    .line 540
    :cond_1
    if-eqz p9, :cond_3

    #@2c
    .line 541
    const/4 v6, 0x0

    #@2d
    const/4 v7, 0x0

    #@2e
    const/4 v8, 0x0

    #@2f
    const/4 v9, 0x0

    #@30
    const/4 v10, 0x0

    #@31
    move-object/from16 v4, p0

    #@33
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    #@36
    move-result-object v19

    #@37
    .line 577
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v19    # "result":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-object v19

    #@38
    .line 543
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v19    # "result":Landroid/net/Uri;
    :cond_3
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3f
    move-result-object v18

    #@40
    .line 544
    .local v18, "lowpath":Ljava/lang/String;
    const-string/jumbo v4, "/ringtones/"

    #@43
    move-object/from16 v0, v18

    #@45
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@48
    move-result v4

    #@49
    if-lez v4, :cond_a

    #@4b
    const/4 v6, 0x1

    #@4c
    .line 545
    .local v6, "ringtones":Z
    :goto_1
    const-string/jumbo v4, "/notifications/"

    #@4f
    move-object/from16 v0, v18

    #@51
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@54
    move-result v4

    #@55
    if-lez v4, :cond_b

    #@57
    const/4 v7, 0x1

    #@58
    .line 546
    .local v7, "notifications":Z
    :goto_2
    const-string/jumbo v4, "/alarms/"

    #@5b
    move-object/from16 v0, v18

    #@5d
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@60
    move-result v4

    #@61
    if-lez v4, :cond_c

    #@63
    const/4 v8, 0x1

    #@64
    .line 547
    .local v8, "alarms":Z
    :goto_3
    const-string/jumbo v4, "/podcasts/"

    #@67
    move-object/from16 v0, v18

    #@69
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6c
    move-result v4

    #@6d
    if-lez v4, :cond_d

    #@6f
    const/4 v10, 0x1

    #@70
    .line 548
    .local v10, "podcasts":Z
    :goto_4
    const-string/jumbo v4, "/music/"

    #@73
    move-object/from16 v0, v18

    #@75
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@78
    move-result v4

    #@79
    if-gtz v4, :cond_e

    #@7b
    .line 549
    if-nez v6, :cond_4

    #@7d
    if-eqz v7, :cond_f

    #@7f
    :cond_4
    const/4 v9, 0x0

    #@80
    .line 551
    .local v9, "music":Z
    :goto_5
    move-object/from16 v0, p0

    #@82
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@84
    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@87
    move-result v15

    #@88
    .line 552
    .local v15, "isaudio":Z
    move-object/from16 v0, p0

    #@8a
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@8c
    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@8f
    move-result v17

    #@90
    .line 553
    .local v17, "isvideo":Z
    move-object/from16 v0, p0

    #@92
    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@94
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@97
    move-result v16

    #@98
    .line 555
    .local v16, "isimage":Z
    if-nez v15, :cond_5

    #@9a
    if-nez v17, :cond_5

    #@9c
    if-eqz v16, :cond_6

    #@9e
    .line 556
    :cond_5
    new-instance v4, Ljava/io/File;

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a5
    invoke-static {v4}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@ac
    move-result-object p1

    #@ad
    .line 561
    :cond_6
    if-nez v15, :cond_7

    #@af
    if-eqz v17, :cond_8

    #@b1
    .line 562
    :cond_7
    move-object/from16 v0, p0

    #@b3
    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@b5
    move-object/from16 v0, p1

    #@b7
    move-object/from16 v1, p2

    #@b9
    move-object/from16 v2, p0

    #@bb
    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->-wrap3(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    #@be
    .line 565
    :cond_8
    if-eqz v16, :cond_9

    #@c0
    .line 566
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    #@c3
    :cond_9
    move-object/from16 v4, p0

    #@c5
    .line 569
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c8
    move-result-object v19

    #@c9
    .local v19, "result":Landroid/net/Uri;
    goto/16 :goto_0

    #@cb
    .line 544
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v15    # "isaudio":Z
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    .local v19, "result":Landroid/net/Uri;
    :cond_a
    const/4 v6, 0x0

    #@cc
    .restart local v6    # "ringtones":Z
    goto :goto_1

    #@cd
    .line 545
    :cond_b
    const/4 v7, 0x0

    #@ce
    .restart local v7    # "notifications":Z
    goto :goto_2

    #@cf
    .line 546
    :cond_c
    const/4 v8, 0x0

    #@d0
    .restart local v8    # "alarms":Z
    goto :goto_3

    #@d1
    .line 547
    :cond_d
    const/4 v10, 0x0

    #@d2
    .restart local v10    # "podcasts":Z
    goto :goto_4

    #@d3
    .line 548
    :cond_e
    const/4 v9, 0x1

    #@d4
    .restart local v9    # "music":Z
    goto :goto_5

    #@d5
    .line 549
    .end local v9    # "music":Z
    :cond_f
    if-nez v8, :cond_4

    #@d7
    if-nez v10, :cond_4

    #@d9
    const/4 v9, 0x1

    #@da
    .restart local v9    # "music":Z
    goto :goto_5

    #@db
    .line 572
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v18    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v14

    #@dc
    .line 573
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    #@df
    const-string/jumbo v11, "RemoteException in MediaScanner.scanFile()"

    #@e2
    invoke-static {v4, v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e5
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
    .line 674
    if-nez p1, :cond_0

    #@7
    .line 675
    return-object v10

    #@8
    .line 677
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    .line 679
    .local v5, "length":I
    if-lez v5, :cond_6

    #@e
    .line 680
    const/4 v7, 0x0

    #@f
    .line 681
    .local v7, "parenthesized":Z
    new-instance v6, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    .line 682
    .local v6, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@15
    .line 683
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    #@17
    .line 684
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 685
    .local v0, "c":C
    if-nez v4, :cond_1

    #@1d
    const/16 v9, 0x28

    #@1f
    if-ne v0, v9, :cond_1

    #@21
    .line 686
    const/4 v7, 0x1

    #@22
    .line 683
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 687
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_2

    #@2b
    .line 688
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2e
    goto :goto_1

    #@2f
    .line 693
    .end local v0    # "c":C
    :cond_2
    if-ge v4, v5, :cond_4

    #@31
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    .line 694
    :goto_2
    if-eqz v7, :cond_5

    #@37
    if-ne v1, v11, :cond_5

    #@39
    .line 697
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
    .line 698
    .local v3, "genreIndex":S
    if-ltz v3, :cond_6

    #@43
    .line 699
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
    .line 700
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
    .line 693
    .end local v3    # "genreIndex":S
    :cond_4
    const/16 v1, 0x20

    #@5b
    .local v1, "charAfterNumber":C
    goto :goto_2

    #@5c
    .line 695
    .end local v1    # "charAfterNumber":C
    :cond_5
    if-nez v7, :cond_6

    #@5e
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@61
    move-result v9

    #@62
    .line 694
    if-nez v9, :cond_3

    #@64
    .line 723
    .end local v4    # "i":I
    .end local v6    # "number":Ljava/lang/StringBuffer;
    .end local v7    # "parenthesized":Z
    :cond_6
    :goto_3
    return-object p1

    #@65
    .line 701
    .restart local v3    # "genreIndex":S
    .restart local v4    # "i":I
    .restart local v6    # "number":Ljava/lang/StringBuffer;
    .restart local v7    # "parenthesized":Z
    :cond_7
    if-ne v3, v12, :cond_8

    #@67
    .line 702
    return-object v10

    #@68
    .line 703
    :cond_8
    if-ge v3, v12, :cond_a

    #@6a
    add-int/lit8 v9, v4, 0x1

    #@6c
    if-ge v9, v5, :cond_a

    #@6e
    .line 706
    if-eqz v7, :cond_9

    #@70
    if-ne v1, v11, :cond_9

    #@72
    .line 707
    add-int/lit8 v4, v4, 0x1

    #@74
    .line 709
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
    .line 710
    .local v8, "ret":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_6

    #@82
    .line 711
    return-object v8

    #@83
    .line 715
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
    .line 718
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
    .line 599
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
    .line 603
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    #@16
    .line 598
    :cond_1
    :goto_0
    return-void

    #@17
    .line 604
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
    .line 605
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    #@2f
    goto :goto_0

    #@30
    .line 606
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
    .line 607
    const-string/jumbo v3, "band"

    #@45
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    .line 606
    if-nez v3, :cond_5

    #@4b
    .line 607
    const-string/jumbo v3, "band;"

    #@4e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    .line 606
    if-eqz v3, :cond_6

    #@54
    .line 608
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    #@5a
    goto :goto_0

    #@5b
    .line 609
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
    .line 610
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    #@73
    goto :goto_0

    #@74
    .line 611
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
    .line 612
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    #@8c
    goto :goto_0

    #@8d
    .line 613
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #@8f
    invoke-static {v3}, Landroid/media/MediaScanner;->-get18(Landroid/media/MediaScanner;)Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_c

    #@95
    .line 614
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
    .line 613
    if-eqz v3, :cond_c

    #@a7
    .line 615
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    #@ad
    goto/16 :goto_0

    #@af
    .line 616
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
    .line 617
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@c4
    move-result v1

    #@c5
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    #@c7
    goto/16 :goto_0

    #@c9
    .line 618
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
    .line 621
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@de
    move-result v0

    #@df
    .line 622
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
    .line 623
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
    .line 624
    const-string/jumbo v3, "set"

    #@f6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v3

    #@fa
    .line 623
    if-nez v3, :cond_11

    #@fc
    .line 624
    const-string/jumbo v3, "set;"

    #@ff
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@102
    move-result v3

    #@103
    .line 623
    if-eqz v3, :cond_12

    #@105
    .line 627
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@108
    move-result v0

    #@109
    .line 628
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
    .line 629
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
    .line 630
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@120
    move-result v1

    #@121
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    #@123
    goto/16 :goto_0

    #@125
    .line 631
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
    .line 632
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    #@13d
    goto/16 :goto_0

    #@13f
    .line 633
    :cond_15
    const-string/jumbo v3, "compilation"

    #@142
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@145
    move-result v3

    #@146
    if-eqz v3, :cond_16

    #@148
    .line 634
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@14b
    move-result v1

    #@14c
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    #@14e
    goto/16 :goto_0

    #@150
    .line 635
    :cond_16
    const-string/jumbo v3, "isdrm"

    #@153
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@156
    move-result v3

    #@157
    if-eqz v3, :cond_18

    #@159
    .line 636
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
    .line 637
    :cond_18
    const-string/jumbo v1, "width"

    #@168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16b
    move-result v1

    #@16c
    if-eqz v1, :cond_19

    #@16e
    .line 638
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    #@171
    move-result v1

    #@172
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    #@174
    goto/16 :goto_0

    #@176
    .line 639
    :cond_19
    const-string/jumbo v1, "height"

    #@179
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17c
    move-result v1

    #@17d
    if-eqz v1, :cond_1

    #@17f
    .line 640
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
    .line 521
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
    .line 518
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 739
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
    .line 740
    const-string/jumbo v0, "video"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 739
    if-eqz v0, :cond_0

    #@14
    .line 744
    return-void

    #@15
    .line 746
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    #@17
    .line 747
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    #@1d
    .line 738
    return-void
.end method

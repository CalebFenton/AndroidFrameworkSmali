.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 605
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "_id"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "_data"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    #@11
    .line 607
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    #@18
    .line 601
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    #@0
    .prologue
    .line 645
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v2, "cancel"

    #@7
    const-string/jumbo v3, "1"

    #@a
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@d
    move-result-object v0

    #@e
    .line 646
    const-string/jumbo v2, "orig_id"

    #@11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 645
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@18
    move-result-object v0

    #@19
    .line 647
    const-string/jumbo v2, "group_id"

    #@1c
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 645
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@27
    move-result-object v1

    #@28
    .line 648
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    #@29
    .line 650
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x0

    #@2d
    const/4 v5, 0x0

    #@2e
    move-object v0, p0

    #@2f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v6

    #@33
    .line 653
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    #@35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@38
    .line 644
    :cond_0
    return-void

    #@39
    .line 652
    .local v6, "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@3a
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 612
    const/4 v0, 0x0

    #@1
    .line 613
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    #@2
    .line 615
    .local v8, "thumbUri":Landroid/net/Uri;
    const/4 v9, 0x0

    #@3
    :try_start_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    #@6
    move-result-wide v6

    #@7
    .line 616
    .local v6, "thumbId":J
    const/4 v9, 0x1

    #@8
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 617
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@f
    move-result-object v8

    #@10
    .line 618
    .local v8, "thumbUri":Landroid/net/Uri;
    const-string/jumbo v9, "r"

    #@13
    invoke-virtual {p2, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@16
    move-result-object v5

    #@17
    .line 620
    .local v5, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1a
    move-result-object v9

    #@1b
    const/4 v10, 0x0

    #@1c
    .line 619
    invoke-static {v9, v10, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1f
    move-result-object v0

    #@20
    .line 621
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 630
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "thumbId":J
    .end local v8    # "thumbUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    #@24
    .line 626
    :catch_0
    move-exception v3

    #@25
    .line 627
    .local v3, "ex":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v9, "MediaStore"

    #@28
    new-instance v10, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v11, "failed to allocate memory for thumbnail "

    #@30
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v10

    #@38
    .line 628
    const-string/jumbo v11, "; "

    #@3b
    .line 627
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v10

    #@3f
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_0

    #@4b
    .line 624
    .end local v3    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    #@4c
    .line 625
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "MediaStore"

    #@4f
    new-instance v10, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v11, "couldn\'t open thumbnail "

    #@57
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v10

    #@5b
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v10

    #@5f
    const-string/jumbo v11, "; "

    #@62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v10

    #@6e
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    goto :goto_0

    #@72
    .line 622
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@73
    .line 623
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "MediaStore"

    #@76
    new-instance v10, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v11, "couldn\'t open thumbnail "

    #@7e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v10

    #@82
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v10

    #@86
    const-string/jumbo v11, "; "

    #@89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v10

    #@91
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v10

    #@95
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    #@0
    .prologue
    .line 674
    const/4 v12, 0x0

    #@1
    .line 678
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/media/MiniThumbFile;

    #@3
    if-eqz p8, :cond_2

    #@5
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@7
    :goto_0
    move-object/from16 v0, v17

    #@9
    invoke-direct {v0, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    #@c
    .line 680
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v13, 0x0

    #@d
    .line 682
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, v17

    #@f
    move-wide/from16 v1, p1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    #@14
    move-result-wide v18

    #@15
    .line 683
    .local v18, "magic":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v4, v18, v8

    #@19
    if-eqz v4, :cond_7

    #@1b
    .line 684
    const/4 v4, 0x3

    #@1c
    move/from16 v0, p5

    #@1e
    if-ne v0, v4, :cond_4

    #@20
    .line 685
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    #@22
    monitor-enter v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@23
    .line 686
    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@25
    if-nez v4, :cond_0

    #@27
    .line 687
    const/16 v4, 0x2710

    #@29
    new-array v4, v4, [B

    #@2b
    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@2d
    .line 689
    :cond_0
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@2f
    move-object/from16 v0, v17

    #@31
    move-wide/from16 v1, p1

    #@33
    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    #@36
    move-result-object v4

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 690
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@3b
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@3d
    array-length v8, v8

    #@3e
    const/4 v9, 0x0

    #@3f
    invoke-static {v4, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@42
    move-result-object v12

    #@43
    .line 691
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_1

    #@45
    .line 692
    const-string/jumbo v4, "MediaStore"

    #@48
    const-string/jumbo v8, "couldn\'t decode byte array."

    #@4b
    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4f
    .line 765
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@52
    .line 766
    const/16 v17, 0x0

    #@54
    .line 696
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v12

    #@55
    .line 679
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v18    # "magic":J
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@57
    goto :goto_0

    #@58
    .line 685
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :catchall_0
    move-exception v4

    #@59
    :try_start_3
    monitor-exit v6

    #@5a
    throw v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@5b
    .line 760
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v18    # "magic":J
    :catch_0
    move-exception v15

    #@5c
    .line 761
    .local v15, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string/jumbo v4, "MediaStore"

    #@5f
    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@62
    .line 763
    if-eqz v13, :cond_3

    #@64
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@67
    .line 765
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@6a
    .line 766
    .end local v15    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_1
    const/16 v17, 0x0

    #@6c
    .line 768
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v12

    #@6d
    .line 697
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :cond_4
    const/4 v4, 0x1

    #@6e
    move/from16 v0, p5

    #@70
    if-ne v0, v4, :cond_7

    #@72
    .line 698
    if-eqz p8, :cond_6

    #@74
    :try_start_5
    const-string/jumbo v14, "video_id="

    #@77
    .line 699
    .local v14, "column":Ljava/lang/String;
    :goto_2
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    #@79
    new-instance v4, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    move-wide/from16 v0, p1

    #@84
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    const/4 v8, 0x0

    #@8d
    const/4 v9, 0x0

    #@8e
    move-object/from16 v4, p0

    #@90
    move-object/from16 v5, p7

    #@92
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@95
    move-result-object v13

    #@96
    .line 700
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_7

    #@98
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_7

    #@9e
    .line 701
    move-object/from16 v0, p7

    #@a0
    move-object/from16 v1, p0

    #@a2
    move-object/from16 v2, p6

    #@a4
    invoke-static {v13, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@a7
    move-result-object v12

    #@a8
    .line 702
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_7

    #@aa
    .line 763
    if-eqz v13, :cond_5

    #@ac
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@af
    .line 765
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@b2
    .line 766
    const/16 v17, 0x0

    #@b4
    .line 703
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v12

    #@b5
    .line 698
    .end local v14    # "column":Ljava/lang/String;
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    .local v13, "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_6
    :try_start_6
    const-string/jumbo v14, "image_id="

    #@b8
    .restart local v14    # "column":Ljava/lang/String;
    goto :goto_2

    #@b9
    .line 709
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "column":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@bc
    move-result-object v4

    #@bd
    const-string/jumbo v6, "blocking"

    #@c0
    const-string/jumbo v8, "1"

    #@c3
    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@c6
    move-result-object v4

    #@c7
    .line 710
    const-string/jumbo v6, "orig_id"

    #@ca
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    .line 709
    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@d1
    move-result-object v4

    #@d2
    .line 711
    const-string/jumbo v6, "group_id"

    #@d5
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@d8
    move-result-object v8

    #@d9
    .line 709
    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@e0
    move-result-object v5

    #@e1
    .line 712
    .local v5, "blockingUri":Landroid/net/Uri;
    if-eqz v13, :cond_8

    #@e3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@e6
    .line 713
    :cond_8
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    #@e8
    const/4 v7, 0x0

    #@e9
    const/4 v8, 0x0

    #@ea
    const/4 v9, 0x0

    #@eb
    move-object/from16 v4, p0

    #@ed
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@f0
    move-result-object v13

    #@f1
    .line 715
    .local v13, "c":Landroid/database/Cursor;
    if-nez v13, :cond_a

    #@f3
    const/4 v4, 0x0

    #@f4
    .line 763
    if-eqz v13, :cond_9

    #@f6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@f9
    .line 765
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@fc
    .line 766
    const/16 v17, 0x0

    #@fe
    .line 715
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v4

    #@ff
    .line 718
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_a
    const/4 v4, 0x3

    #@100
    move/from16 v0, p5

    #@102
    if-ne v0, v4, :cond_12

    #@104
    .line 719
    :try_start_7
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    #@106
    monitor-enter v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@107
    .line 720
    :try_start_8
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@109
    if-nez v4, :cond_b

    #@10b
    .line 721
    const/16 v4, 0x2710

    #@10d
    new-array v4, v4, [B

    #@10f
    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@111
    .line 723
    :cond_b
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@113
    const/4 v8, 0x0

    #@114
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([BB)V

    #@117
    .line 724
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@119
    move-object/from16 v0, v17

    #@11b
    move-wide/from16 v1, p1

    #@11d
    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    #@120
    move-result-object v4

    #@121
    if-eqz v4, :cond_c

    #@123
    .line 725
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@125
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    #@127
    array-length v8, v8

    #@128
    const/4 v9, 0x0

    #@129
    invoke-static {v4, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@12c
    move-result-object v12

    #@12d
    .line 726
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_c

    #@12f
    .line 727
    const-string/jumbo v4, "MediaStore"

    #@132
    const-string/jumbo v8, "couldn\'t decode byte array."

    #@135
    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@138
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_9
    monitor-exit v6

    #@139
    .line 740
    :cond_d
    :goto_3
    if-nez v12, :cond_f

    #@13b
    .line 741
    const-string/jumbo v4, "MediaStore"

    #@13e
    new-instance v6, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v8, "Create the thumbnail in memory: origId="

    #@146
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v6

    #@14a
    move-wide/from16 v0, p1

    #@14c
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v6

    #@150
    .line 742
    const-string/jumbo v8, ", kind="

    #@153
    .line 741
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v6

    #@157
    move/from16 v0, p5

    #@159
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v6

    #@15d
    .line 742
    const-string/jumbo v8, ", isVideo="

    #@160
    .line 741
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v6

    #@164
    move/from16 v0, p8

    #@166
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@169
    move-result-object v6

    #@16a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v6

    #@16e
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@171
    .line 744
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@174
    move-result-object v4

    #@175
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@178
    move-result-object v6

    #@179
    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@17c
    move-result-object v4

    #@17d
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    #@180
    move-result-object v4

    #@181
    .line 745
    const-string/jumbo v6, "thumbnails"

    #@184
    const-string/jumbo v8, "media"

    #@187
    .line 744
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18a
    move-result-object v4

    #@18b
    .line 743
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@18e
    move-result-object v7

    #@18f
    .line 746
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_e

    #@191
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@194
    .line 747
    :cond_e
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    #@196
    const/4 v9, 0x0

    #@197
    const/4 v10, 0x0

    #@198
    const/4 v11, 0x0

    #@199
    move-object/from16 v6, p0

    #@19b
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@19e
    move-result-object v13

    #@19f
    .line 748
    if-eqz v13, :cond_14

    #@1a1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@1a4
    move-result v4

    #@1a5
    if-eqz v4, :cond_14

    #@1a7
    .line 751
    const/4 v4, 0x1

    #@1a8
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1ab
    move-result-object v16

    #@1ac
    .line 752
    .local v16, "filePath":Ljava/lang/String;
    if-eqz v16, :cond_f

    #@1ae
    .line 753
    if-eqz p8, :cond_16

    #@1b0
    .line 754
    move-object/from16 v0, v16

    #@1b2
    move/from16 v1, p5

    #@1b4
    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@1b7
    move-result-object v12

    #@1b8
    .line 763
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v16    # "filePath":Ljava/lang/String;
    :cond_f
    :goto_4
    if-eqz v13, :cond_10

    #@1ba
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@1bd
    .line 765
    :cond_10
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@1c0
    goto/16 :goto_1

    #@1c2
    .line 719
    :catchall_1
    move-exception v4

    #@1c3
    :try_start_a
    monitor-exit v6

    #@1c4
    throw v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@1c5
    .line 762
    .end local v5    # "blockingUri":Landroid/net/Uri;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v18    # "magic":J
    :catchall_2
    move-exception v4

    #@1c6
    .line 763
    if-eqz v13, :cond_11

    #@1c8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@1cb
    .line 765
    :cond_11
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@1ce
    .line 766
    const/16 v17, 0x0

    #@1d0
    .line 762
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    throw v4

    #@1d1
    .line 731
    .restart local v5    # "blockingUri":Landroid/net/Uri;
    .restart local v13    # "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :cond_12
    const/4 v4, 0x1

    #@1d2
    move/from16 v0, p5

    #@1d4
    if-ne v0, v4, :cond_13

    #@1d6
    .line 732
    :try_start_b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@1d9
    move-result v4

    #@1da
    if-eqz v4, :cond_d

    #@1dc
    .line 733
    move-object/from16 v0, p7

    #@1de
    move-object/from16 v1, p0

    #@1e0
    move-object/from16 v2, p6

    #@1e2
    invoke-static {v13, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1e5
    move-result-object v12

    #@1e6
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    #@1e8
    .line 736
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1ea
    new-instance v6, Ljava/lang/StringBuilder;

    #@1ec
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1ef
    const-string/jumbo v8, "Unsupported kind: "

    #@1f2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v6

    #@1f6
    move/from16 v0, p5

    #@1f8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v6

    #@1fc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v6

    #@200
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@203
    throw v4
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@204
    .line 749
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_14
    const/4 v4, 0x0

    #@205
    .line 763
    if-eqz v13, :cond_15

    #@207
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@20a
    .line 765
    :cond_15
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    #@20d
    .line 766
    const/16 v17, 0x0

    #@20f
    .line 749
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v4

    #@210
    .line 756
    .restart local v16    # "filePath":Ljava/lang/String;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_16
    :try_start_c
    move-object/from16 v0, v16

    #@212
    move/from16 v1, p5

    #@214
    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@217
    move-result-object v12

    #@218
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4
.end method

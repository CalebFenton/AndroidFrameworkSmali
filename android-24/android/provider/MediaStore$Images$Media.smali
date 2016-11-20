.class public final Landroid/provider/MediaStore$Images$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Images$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "bucket_display_name"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1021
    const-string/jumbo v0, "internal"

    #@3
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1020
    sput-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1028
    const-string/jumbo v0, "external"

    #@c
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 1027
    sput-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@12
    .line 845
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # J
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "kind"    # I

    #@0
    .prologue
    .line 912
    new-instance v7, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 914
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@8
    move-result v2

    #@9
    int-to-float v2, v2

    #@a
    div-float v11, p4, v2

    #@c
    .line 915
    .local v11, "scaleX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@f
    move-result v2

    #@10
    int-to-float v2, v2

    #@11
    div-float v12, p5, v2

    #@13
    .line 917
    .local v12, "scaleY":F
    invoke-virtual {v7, v11, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    #@16
    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@19
    move-result v5

    #@1a
    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1d
    move-result v6

    #@1e
    .line 919
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    .line 922
    const/4 v8, 0x1

    #@21
    move-object/from16 v2, p1

    #@23
    .line 919
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@26
    move-result-object v13

    #@27
    .line 924
    .local v13, "thumb":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/content/ContentValues;

    #@29
    const/4 v2, 0x4

    #@2a
    move-object/from16 v0, v16

    #@2c
    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    #@2f
    .line 925
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "kind"

    #@32
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v3

    #@36
    move-object/from16 v0, v16

    #@38
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3b
    .line 926
    const-string/jumbo v2, "image_id"

    #@3e
    move-wide/from16 v0, p2

    #@40
    long-to-int v3, v0

    #@41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v3

    #@45
    move-object/from16 v0, v16

    #@47
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@4a
    .line 927
    const-string/jumbo v2, "height"

    #@4d
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    #@50
    move-result v3

    #@51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v3

    #@55
    move-object/from16 v0, v16

    #@57
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5a
    .line 928
    const-string/jumbo v2, "width"

    #@5d
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    #@60
    move-result v3

    #@61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v3

    #@65
    move-object/from16 v0, v16

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@6a
    .line 930
    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@6c
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, v16

    #@70
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@73
    move-result-object v15

    #@74
    .line 933
    .local v15, "url":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    #@76
    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    #@79
    move-result-object v14

    #@7a
    .line 935
    .local v14, "thumbOut":Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@7c
    const/16 v3, 0x64

    #@7e
    invoke-virtual {v13, v2, v3, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@81
    .line 936
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 937
    return-object v13

    #@85
    .line 942
    .end local v14    # "thumbOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v10

    #@86
    .line 943
    .local v10, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    #@87
    return-object v2

    #@88
    .line 939
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    #@89
    .line 940
    .local v9, "ex":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    #@8a
    return-object v2
.end method

.method public static final getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 872
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@3
    move-result-object v1

    #@4
    .line 873
    .local v1, "input":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@7
    move-result-object v0

    #@8
    .line 874
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@b
    .line 875
    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "content://media/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1014
    const-string/jumbo v1, "/images/media"

    #@13
    .line 1013
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 959
    new-instance v14, Landroid/content/ContentValues;

    #@2
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 960
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    #@8
    move-object/from16 v0, p2

    #@a
    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 961
    const-string/jumbo v2, "description"

    #@10
    move-object/from16 v0, p3

    #@12
    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 962
    const-string/jumbo v2, "mime_type"

    #@18
    const-string/jumbo v6, "image/jpeg"

    #@1b
    invoke-virtual {v14, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 964
    const/4 v13, 0x0

    #@1f
    .line 965
    .local v13, "url":Landroid/net/Uri;
    const/4 v12, 0x0

    #@20
    .line 968
    .local v12, "stringUrl":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@22
    invoke-virtual {p0, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@25
    move-result-object v13

    #@26
    .line 970
    .local v13, "url":Landroid/net/Uri;
    if-eqz p1, :cond_2

    #@28
    .line 971
    invoke-virtual {p0, v13}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v10

    #@2c
    .line 973
    .local v10, "imageOut":Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@2e
    const/16 v6, 0x32

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v2, v6, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 975
    :try_start_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    #@38
    .line 978
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@3b
    move-result-wide v4

    #@3c
    .line 981
    .local v4, "id":J
    const/4 v2, 0x1

    #@3d
    const/4 v6, 0x0

    #@3e
    .line 980
    invoke-static {p0, v4, v5, v2, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@41
    move-result-object v3

    #@42
    .line 983
    .local v3, "miniThumb":Landroid/graphics/Bitmap;
    const/high16 v6, 0x42480000    # 50.0f

    #@44
    const/high16 v7, 0x42480000    # 50.0f

    #@46
    .line 984
    const/4 v8, 0x3

    #@47
    move-object v2, p0

    #@48
    .line 983
    invoke-static/range {v2 .. v8}, Landroid/provider/MediaStore$Images$Media;->StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@4b
    move-result-object v11

    #@4c
    .line 998
    .end local v3    # "miniThumb":Landroid/graphics/Bitmap;
    .end local v4    # "id":J
    .end local v10    # "imageOut":Ljava/io/OutputStream;
    .end local v13    # "url":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    #@4e
    .line 999
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@51
    move-result-object v12

    #@52
    .line 1002
    .end local v12    # "stringUrl":Ljava/lang/String;
    :cond_1
    return-object v12

    #@53
    .line 974
    .restart local v10    # "imageOut":Ljava/io/OutputStream;
    .restart local v12    # "stringUrl":Ljava/lang/String;
    .restart local v13    # "url":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    #@54
    .line 975
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    #@57
    .line 974
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@58
    .line 990
    .end local v10    # "imageOut":Ljava/io/OutputStream;
    .end local v13    # "url":Landroid/net/Uri;
    :catch_0
    move-exception v9

    #@59
    .line 991
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MediaStore"

    #@5c
    const-string/jumbo v6, "Failed to insert image"

    #@5f
    invoke-static {v2, v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 992
    if-eqz v13, :cond_0

    #@64
    .line 993
    const/4 v2, 0x0

    #@65
    const/4 v6, 0x0

    #@66
    invoke-virtual {p0, v13, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@69
    .line 994
    const/4 v13, 0x0

    #@6a
    .local v13, "url":Landroid/net/Uri;
    goto :goto_0

    #@6b
    .line 986
    .end local v9    # "e":Ljava/lang/Exception;
    .local v13, "url":Landroid/net/Uri;
    :cond_2
    :try_start_4
    const-string/jumbo v2, "MediaStore"

    #@6e
    const-string/jumbo v6, "Failed to create thumbnail, removing original"

    #@71
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 987
    const/4 v2, 0x0

    #@75
    const/4 v6, 0x0

    #@76
    invoke-virtual {p0, v13, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@79
    .line 988
    const/4 v13, 0x0

    #@7a
    .local v13, "url":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 891
    new-instance v3, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@5
    .line 893
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@8
    move-result-object v0

    #@9
    .line 894
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p2, p3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 895
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 899
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@13
    .line 896
    :goto_0
    return-object v2

    #@14
    .line 900
    :catch_0
    move-exception v1

    #@15
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@16
    .line 897
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@17
    .line 899
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1a
    .line 897
    :goto_1
    throw v4

    #@1b
    .line 900
    :catch_1
    move-exception v1

    #@1c
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 847
    const-string/jumbo v5, "bucket_display_name"

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v4, v3

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 853
    if-nez p4, :cond_0

    #@3
    const-string/jumbo v5, "bucket_display_name"

    #@6
    :goto_0
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v3, p3

    #@a
    .line 852
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    :cond_0
    move-object v5, p4

    #@10
    .line 853
    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 859
    if-nez p5, :cond_0

    #@2
    const-string/jumbo v5, "bucket_display_name"

    #@5
    :goto_0
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    .line 858
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    :cond_0
    move-object v5, p5

    #@10
    .line 859
    goto :goto_0
.end method

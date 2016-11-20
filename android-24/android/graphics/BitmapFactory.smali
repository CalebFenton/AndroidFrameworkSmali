.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 556
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    const-wide/16 v4, 0x2

    #@2
    .line 525
    or-int v1, p1, p2

    #@4
    if-ltz v1, :cond_0

    #@6
    array-length v1, p0

    #@7
    add-int v2, p1, p2

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 526
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@10
    throw v1

    #@11
    .line 531
    :cond_1
    const-string/jumbo v1, "decodeBitmap"

    #@14
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@17
    .line 533
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1a
    move-result-object v0

    #@1b
    .line 535
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    #@1d
    if-eqz p3, :cond_2

    #@1f
    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v2, "Problem decoding into existing bitmap"

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 539
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    #@2d
    .line 540
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@30
    .line 539
    throw v1

    #@31
    .line 538
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 540
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@37
    .line 543
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 428
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 398
    const/4 v0, 0x0

    #@1
    .line 399
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    #@2
    .line 401
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    #@4
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 402
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v4, "stream":Ljava/io/InputStream;
    const/4 v5, 0x0

    #@8
    :try_start_1
    invoke-static {v4, v5, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b
    move-result-object v0

    #@c
    .line 409
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    #@e
    .line 411
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@11
    :cond_0
    :goto_0
    move-object v3, v4

    #@12
    .line 417
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v0

    #@13
    .line 412
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@14
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@15
    .line 403
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v0, "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@16
    .line 407
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "BitmapFactory"

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "Unable to decode stream: "

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    .line 409
    if-eqz v3, :cond_1

    #@32
    .line 411
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@35
    goto :goto_1

    #@36
    .line 412
    :catch_2
    move-exception v1

    #@37
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@38
    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@39
    .line 409
    :goto_3
    if-eqz v3, :cond_2

    #@3b
    .line 411
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@3e
    .line 408
    :cond_2
    :goto_4
    throw v5

    #@3f
    .line 412
    :catch_3
    move-exception v1

    #@40
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@41
    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    #@42
    move-object v3, v4

    #@43
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    goto :goto_3

    #@44
    .line 403
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    #@45
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@46
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 715
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    const-wide/16 v6, 0x2

    #@2
    .line 680
    const-string/jumbo v3, "decodeFileDescriptor"

    #@5
    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 682
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 683
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@11
    move-result-object v0

    #@12
    .line 695
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    #@14
    if-eqz p2, :cond_1

    #@16
    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 696
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v4, "Problem decoding into existing bitmap"

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 700
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    #@24
    .line 701
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@27
    .line 700
    throw v3

    #@28
    .line 685
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    #@2a
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 687
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    move-result-object v0

    #@31
    .line 690
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 691
    :catch_0
    move-exception v2

    #@36
    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_0

    #@37
    .line 688
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    #@38
    .line 690
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3b
    .line 688
    :goto_1
    :try_start_5
    throw v3

    #@3c
    .line 691
    :catch_1
    move-exception v2

    #@3d
    .restart local v2    # "t":Ljava/lang/Throwable;
    goto :goto_1

    #@3e
    .line 699
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@41
    .line 701
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@44
    .line 703
    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 508
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 471
    const/4 v0, 0x0

    #@1
    .line 472
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    #@2
    .line 475
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Landroid/util/TypedValue;

    #@4
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 476
    .local v4, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@a
    move-result-object v3

    #@b
    .line 478
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    #@c
    invoke-static {p0, v4, v3, v5, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    .line 486
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    #@12
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    .line 492
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@17
    if-eqz p2, :cond_2

    #@19
    iget-object v5, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 493
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v6, "Problem decoding into existing bitmap"

    #@22
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5

    #@26
    .line 487
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v1

    #@27
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@28
    .line 479
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "value":Landroid/util/TypedValue;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    #@29
    .line 486
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_0

    #@2b
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@2e
    goto :goto_0

    #@2f
    .line 487
    :catch_2
    move-exception v1

    #@30
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    #@31
    .line 484
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@32
    .line 486
    if-eqz v3, :cond_1

    #@34
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@37
    .line 484
    :cond_1
    :goto_1
    throw v5

    #@38
    .line 487
    :catch_3
    move-exception v1

    #@39
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@3a
    .line 496
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 438
    if-nez p4, :cond_0

    #@2
    .line 439
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    #@4
    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@7
    .line 442
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    #@9
    if-nez v1, :cond_1

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 443
    iget v0, p1, Landroid/util/TypedValue;->density:I

    #@f
    .line 444
    .local v0, "density":I
    if-nez v0, :cond_3

    #@11
    .line 445
    const/16 v1, 0xa0

    #@13
    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    #@15
    .line 451
    .end local v0    # "density":I
    :cond_1
    :goto_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    #@17
    if-nez v1, :cond_2

    #@19
    if-eqz p0, :cond_2

    #@1b
    .line 452
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1e
    move-result-object v1

    #@1f
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@21
    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    #@23
    .line 455
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 446
    .restart local v0    # "density":I
    :cond_3
    const v1, 0xffff

    #@2b
    if-eq v0, v1, :cond_1

    #@2d
    .line 447
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    #@2f
    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 660
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    const-wide/16 v6, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 610
    if-nez p0, :cond_0

    #@5
    .line 611
    return-object v3

    #@6
    .line 614
    :cond_0
    const/4 v2, 0x0

    #@7
    .line 616
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v3, "decodeBitmap"

    #@a
    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d
    .line 618
    :try_start_0
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 619
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    #@13
    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@16
    move-result-wide v0

    #@17
    .line 620
    .local v0, "asset":J
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1a
    move-result-object v2

    #@1b
    .line 625
    .end local v0    # "asset":J
    .local v2, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v2, :cond_2

    #@1d
    if-eqz p2, :cond_2

    #@1f
    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 626
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v4, "Problem decoding into existing bitmap"

    #@28
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 630
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    #@2d
    .line 631
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@30
    .line 630
    throw v3

    #@31
    .line 622
    .local v2, "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@34
    move-result-object v2

    #@35
    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    #@36
    .line 629
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 631
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@3c
    .line 634
    return-object v2
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 643
    const/4 v0, 0x0

    #@1
    .line 644
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_0

    #@3
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    #@5
    .line 645
    .end local v0    # "tempStorage":[B
    :cond_0
    if-nez v0, :cond_1

    #@7
    const/16 v1, 0x4000

    #@9
    new-array v0, v1, [B

    #@b
    .line 646
    :cond_1
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private static native nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 563
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    :cond_0
    return-void

    #@5
    .line 565
    :cond_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    #@7
    .line 566
    .local v0, "density":I
    if-eqz v0, :cond_7

    #@9
    .line 567
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    #@c
    .line 568
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    #@e
    .line 569
    .local v3, "targetDensity":I
    if-eqz v3, :cond_2

    #@10
    if-ne v0, v3, :cond_3

    #@12
    .line 570
    :cond_2
    return-void

    #@13
    .line 569
    :cond_3
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    #@15
    if-eq v0, v4, :cond_2

    #@17
    .line 573
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@1a
    move-result-object v2

    #@1b
    .line 574
    .local v2, "np":[B
    if-eqz v2, :cond_6

    #@1d
    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    #@20
    move-result v1

    #@21
    .line 575
    :goto_0
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    #@23
    if-nez v4, :cond_4

    #@25
    if-eqz v1, :cond_5

    #@27
    .line 576
    :cond_4
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    #@2a
    .line 562
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_5
    :goto_1
    return-void

    #@2b
    .line 574
    .restart local v2    # "np":[B
    .restart local v3    # "targetDensity":I
    :cond_6
    const/4 v1, 0x0

    #@2c
    .local v1, "isNinePatch":Z
    goto :goto_0

    #@2d
    .line 578
    .end local v1    # "isNinePatch":Z
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_7
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    #@2f
    if-eqz v4, :cond_5

    #@31
    .line 580
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    #@34
    move-result v4

    #@35
    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    #@38
    goto :goto_1
.end method

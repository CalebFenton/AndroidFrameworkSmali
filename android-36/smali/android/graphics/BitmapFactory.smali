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
.field private static final greylist-max-o DECODE_BUFFER_SIZE:I = 0x4000


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 707
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 673
    or-int v0, p1, p2

    if-ltz v0, :cond_4a

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_4a

    .line 676
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 680
    const-string v0, "decodeBitmap"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 682
    nop

    .line 683
    :try_start_14
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 684
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v9
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_40

    .line 682
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local v3, "data":[B
    .local v4, "offset":I
    .local v5, "length":I
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_20
    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 686
    .local p0, "bm":Landroid/graphics/Bitmap;
    if-nez p0, :cond_35

    if-eqz v6, :cond_35

    iget-object p1, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2d

    goto :goto_35

    .line 687
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Problem decoding into existing bitmap"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":[B
    .end local v4    # "offset":I
    .end local v5    # "length":I
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw p1

    .line 689
    .restart local v3    # "data":[B
    .restart local v4    # "offset":I
    .restart local v5    # "length":I
    .restart local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_35
    :goto_35
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_3d

    .line 691
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    nop

    .line 694
    return-object p0

    .line 691
    .end local p0    # "bm":Landroid/graphics/Bitmap;
    :catchall_3d
    move-exception v0

    move-object p0, v0

    goto :goto_46

    .end local v3    # "data":[B
    .end local v4    # "offset":I
    .end local v5    # "length":I
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local p0, "data":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    .restart local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_40
    move-exception v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object p0, v0

    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "data":[B
    .restart local v4    # "offset":I
    .restart local v5    # "length":I
    .restart local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_46
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    throw p0

    .line 673
    .end local v3    # "data":[B
    .end local v4    # "offset":I
    .end local v5    # "length":I
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    .restart local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_4a
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 674
    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "data":[B
    .restart local v4    # "offset":I
    .restart local v5    # "length":I
    .restart local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "pathName"    # Ljava/lang/String;

    .line 559
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 528
    invoke-static {p1}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 532
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_5
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {p0, v2}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 533
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_1c
    .catchall {:try_start_5 .. :try_end_11} :catchall_1a

    move-object v0, v2

    .line 540
    if-eqz v1, :cond_3c

    .line 542
    :try_start_14
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 545
    :goto_17
    goto :goto_3c

    .line 543
    :catch_18
    move-exception v2

    goto :goto_17

    .line 540
    :catchall_1a
    move-exception v2

    goto :goto_3d

    .line 534
    :catch_1c
    move-exception v2

    .line 538
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v3, "BitmapFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to decode file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_1a

    .line 540
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3c

    .line 542
    :try_start_38
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_18

    goto :goto_17

    .line 548
    :cond_3c
    :goto_3c
    return-object v0

    .line 540
    :goto_3d
    if-eqz v1, :cond_44

    .line 542
    :try_start_3f
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 545
    goto :goto_44

    .line 543
    :catch_43
    move-exception v3

    .line 547
    :cond_44
    :goto_44
    throw v2
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 886
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 846
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 849
    const-string v0, "decodeFileDescriptor"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 851
    :try_start_a
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 852
    nop

    .line 853
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v6

    .line 854
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v8
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_5a

    .line 852
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local v3, "fd":Ljava/io/FileDescriptor;
    .local v4, "outPadding":Landroid/graphics/Rect;
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_1c
    invoke-static/range {v3 .. v9}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    .local p0, "bm":Landroid/graphics/Bitmap;
    goto :goto_34

    .line 856
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "outPadding":Landroid/graphics/Rect;
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local p0, "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_21
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "outPadding":Landroid/graphics/Rect;
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_57

    .line 858
    .local p0, "fis":Ljava/io/FileInputStream;
    :try_start_29
    invoke-static {p0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_4d

    .line 861
    .local p1, "bm":Landroid/graphics/Bitmap;
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 862
    goto :goto_33

    :catchall_31
    move-exception v0

    .line 863
    nop

    .line 866
    .end local p0    # "fis":Ljava/io/FileInputStream;
    :goto_33
    move-object p0, p1

    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .local p0, "bm":Landroid/graphics/Bitmap;
    :goto_34
    if-nez p0, :cond_45

    if-eqz v5, :cond_45

    :try_start_38
    iget-object p1, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3d

    goto :goto_45

    .line 867
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Problem decoding into existing bitmap"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "outPadding":Landroid/graphics/Rect;
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw p1

    .line 870
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "outPadding":Landroid/graphics/Rect;
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_45
    :goto_45
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_57

    .line 872
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    nop

    .line 874
    return-object p0

    .line 860
    .local p0, "fis":Ljava/io/FileInputStream;
    :catchall_4d
    move-exception v0

    move-object p1, v0

    .line 861
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    .line 862
    :goto_52
    goto :goto_55

    :catchall_53
    move-exception v0

    goto :goto_52

    .line 863
    :goto_55
    nop

    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "outPadding":Landroid/graphics/Rect;
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_56
    throw p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 872
    .end local p0    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "outPadding":Landroid/graphics/Rect;
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_57
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "outPadding":Landroid/graphics/Rect;
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local p0, "fd":Ljava/io/FileDescriptor;
    .local p1, "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_5a
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object p0, v0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "outPadding":Landroid/graphics/Rect;
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_5f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    throw p0
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 651
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 613
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 618
    .local v1, "is":Ljava/io/InputStream;
    :try_start_5
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 619
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 621
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_29
    .catchall {:try_start_5 .. :try_end_14} :catchall_1e

    move-object v0, v3

    .line 629
    .end local v2    # "value":Landroid/util/TypedValue;
    if-eqz v1, :cond_1d

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1d

    .line 630
    :catch_1b
    move-exception v2

    .line 633
    goto :goto_30

    .line 632
    :cond_1d
    :goto_1d
    goto :goto_30

    .line 628
    :catchall_1e
    move-exception v2

    .line 629
    if-eqz v1, :cond_27

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_27

    .line 630
    :catch_25
    move-exception v3

    goto :goto_28

    .line 632
    :cond_27
    :goto_27
    nop

    .line 633
    :goto_28
    throw v2

    .line 622
    :catch_29
    move-exception v2

    .line 629
    if-eqz v1, :cond_1d

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_1b

    goto :goto_1d

    .line 635
    :goto_30
    if-nez v0, :cond_41

    if-eqz p2, :cond_41

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_39

    goto :goto_41

    .line 636
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_41
    :goto_41
    return-object v0
.end method

.method public static whitelist decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 574
    invoke-static {p4}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 575
    if-nez p4, :cond_b

    .line 576
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p4, v0

    .line 579
    :cond_b
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    .line 580
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 581
    .local v0, "density":I
    if-nez v0, :cond_1a

    .line 582
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_21

    .line 583
    :cond_1a
    const v1, 0xffff

    if-eq v0, v1, :cond_21

    .line 584
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 588
    .end local v0    # "density":I
    :cond_21
    :goto_21
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v0, :cond_2f

    if-eqz p0, :cond_2f

    .line 589
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 592
    :cond_2f
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 823
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 768
    if-nez p0, :cond_4

    .line 769
    const/4 v0, 0x0

    return-object v0

    .line 771
    :cond_4
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 773
    const/4 v9, 0x0

    .line 775
    .local v9, "bm":Landroid/graphics/Bitmap;
    const-string v0, "decodeBitmap"

    const-wide/16 v10, 0x2

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 777
    :try_start_f
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_2a

    .line 778
    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v1

    .line 779
    .local v1, "asset":J
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v5

    .line 780
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 779
    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
    .end local v1    # "asset":J
    .end local v9    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    move-object v9, v0

    goto :goto_2f

    .line 782
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "bm":Landroid/graphics/Bitmap;
    :cond_2a
    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v9, v0

    .line 785
    :goto_2f
    if-nez v9, :cond_40

    if-eqz p2, :cond_40

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_38

    goto :goto_40

    .line 786
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Problem decoding into existing bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v9    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v0

    .line 789
    .restart local v9    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_40
    :goto_40
    invoke-static {v9, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_48

    .line 791
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 792
    nop

    .line 794
    return-object v9

    .line 791
    :catchall_48
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 792
    throw v0
.end method

.method private static greylist-max-o decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 806
    :cond_5
    if-nez v0, :cond_b

    const/16 v1, 0x4000

    new-array v0, v1, [B

    :cond_b
    move-object v2, v0

    .line 807
    .end local v0    # "tempStorage":[B
    .local v2, "tempStorage":[B
    nop

    .line 808
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v5

    .line 809
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 807
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local v1, "is":Ljava/io/InputStream;
    .local v3, "outPadding":Landroid/graphics/Rect;
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v1 .. v8}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static native greylist-max-r nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static greylist-max-o setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 7
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 714
    if-eqz p0, :cond_3f

    if-nez p1, :cond_5

    goto :goto_3f

    .line 716
    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 717
    .local v0, "density":I
    if-eqz v0, :cond_31

    .line 718
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 719
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 720
    .local v1, "targetDensity":I
    if-eqz v1, :cond_30

    if-eq v0, v1, :cond_30

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v0, v2, :cond_17

    goto :goto_30

    .line 724
    :cond_17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 725
    .local v2, "np":[B
    if-eqz v2, :cond_25

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 726
    .local v3, "isNinePatch":Z
    :goto_26
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_2c

    if-eqz v3, :cond_3d

    .line 727
    :cond_2c
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3d

    .line 721
    .end local v2    # "np":[B
    .end local v3    # "isNinePatch":Z
    :cond_30
    :goto_30
    return-void

    .line 729
    .end local v1    # "targetDensity":I
    :cond_31
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3d

    .line 731
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3e

    .line 729
    :cond_3d
    :goto_3d
    nop

    .line 733
    :goto_3e
    return-void

    .line 714
    .end local v0    # "density":I
    :cond_3f
    :goto_3f
    return-void
.end method

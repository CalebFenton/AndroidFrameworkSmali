.class public Landroid/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Utils$ListenerList;
    }
.end annotation


# static fields
.field public static final blacklist SYNCHRONIZED_VIBRATION:Ljava/lang/String; = "synchronized"

.field private static final blacklist TAG:Ljava/lang/String; = "Utils"

.field public static final blacklist VIBRATION_URI_PARAM:Ljava/lang/String; = "vibration_uri"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist alignRange(Landroid/util/Range;I)Landroid/util/Range;
    .registers 4
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 226
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    nop

    .line 227
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, p1

    mul-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 226
    invoke-virtual {p0, v0, v1}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "deviceType"    # I
    .param p1, "address"    # Ljava/lang/String;

    .line 725
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 726
    return-object p1

    .line 728
    :cond_7
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 705
    if-nez p0, :cond_4

    .line 706
    const/4 v0, 0x0

    return-object v0

    .line 708
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 709
    return-object p0

    .line 711
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XX:XX:XX:XX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([",
            "Landroid/util/Range<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 150
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p1, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    new-instance v1, Landroid/media/Utils$2;

    invoke-direct {v1}, Landroid/media/Utils$2;-><init>()V

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static blacklist divUp(II)I
    .registers 3
    .param p0, "num"    # I
    .param p1, "den"    # I

    .line 232
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method static blacklist divUp(JJ)J
    .registers 8
    .param p0, "num"    # J
    .param p2, "den"    # J

    .line 236
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static blacklist factorRange(Landroid/util/Range;I)Landroid/util/Range;
    .registers 4
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 190
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 191
    return-object p0

    .line 193
    :cond_4
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static blacklist factorRange(Landroid/util/Range;J)Landroid/util/Range;
    .registers 6
    .param p1, "factor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 201
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 202
    return-object p0

    .line 204
    :cond_7
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static blacklist gcd(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 168
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_6
    if-gez p1, :cond_9

    .line 172
    neg-int p1, p1

    .line 174
    :cond_9
    if-gez p0, :cond_c

    .line 175
    neg-int p0, p0

    .line 177
    :cond_c
    :goto_c
    if-eqz p0, :cond_13

    .line 178
    rem-int v0, p1, p0

    .line 179
    .local v0, "c":I
    move p1, p0

    .line 180
    move p0, v0

    .line 181
    .end local v0    # "c":I
    goto :goto_c

    .line 182
    :cond_13
    return p1
.end method

.method static blacklist getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 413
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 416
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :cond_11
    const-string v0, "content"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 420
    const-string v0, "_display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 423
    .local v5, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 424
    .local p1, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_52

    :try_start_2e
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_52

    .line 425
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_45

    .line 428
    if-eqz p1, :cond_44

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_44
    return-object v0

    .line 423
    :catchall_45
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_51

    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw v2

    .line 428
    :cond_52
    if-eqz p1, :cond_59

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_59

    .line 417
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "proj":[Ljava/lang/String;
    .local p1, "uri":Landroid/net/Uri;
    :cond_58
    move-object v4, p1

    .line 433
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_59
    :goto_59
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subdirectory"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 386
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, "externalStorage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 390
    const/4 v1, 0x0

    .line 393
    .local v1, "outFile":Ljava/io/File;
    :try_start_8
    invoke-static {v0, p3, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_c} :catch_e

    .line 398
    .end local v1    # "outFile":Ljava/io/File;
    .local v2, "outFile":Ljava/io/File;
    nop

    .line 399
    return-object v2

    .line 394
    .end local v2    # "outFile":Ljava/io/File;
    .restart local v1    # "outFile":Ljava/io/File;
    :catch_e
    move-exception v2

    .line 396
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get a unique file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Utils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v3, 0x0

    return-object v3
.end method

.method public static blacklist getVibrationUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 771
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 772
    return-object v0

    .line 774
    :cond_4
    const-string v1, "vibration_uri"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "vibrationUriString":Ljava/lang/String;
    if-nez v1, :cond_d

    .line 776
    return-object v0

    .line 778
    :cond_d
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hasVibration(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 754
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 755
    return v0

    .line 757
    :cond_4
    const-string v1, "vibration_uri"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "vibrationUriString":Ljava/lang/String;
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method static blacklist intRangeFor(D)Landroid/util/Range;
    .registers 5
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 250
    double-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([",
            "Landroid/util/Range<",
            "TT;>;[",
            "Landroid/util/Range<",
            "TT;>;)[",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "one":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "another":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    const/4 v0, 0x0

    .line 117
    .local v0, "ix":I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 118
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Range<TT;>;>;"
    array-length v2, p1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_61

    aget-object v4, p1, v3

    .line 119
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_c
    array-length v5, p0

    if-ge v0, v5, :cond_22

    aget-object v5, p0, v0

    .line 120
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_22

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 123
    :cond_22
    :goto_22
    array-length v5, p0

    if-ge v0, v5, :cond_41

    aget-object v5, p0, v0

    .line 124
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_41

    .line 125
    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 128
    :cond_41
    array-length v5, p0

    if-ne v0, v5, :cond_45

    .line 129
    goto :goto_61

    .line 131
    :cond_45
    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5e

    .line 132
    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 135
    :cond_61
    :goto_61
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Range;

    return-object v2
.end method

.method public static blacklist isRingtoneVibrationSettingsSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 741
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_11

    const v1, 0x1110222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static blacklist lcm(II)J
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 243
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 246
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {p0, p1}, Landroid/media/Utils;->gcd(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 244
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lce is not defined for zero arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist longRangeFor(D)Landroid/util/Range;
    .registers 5
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 254
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static blacklist parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 7
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez p0, :cond_3

    .line 286
    return-object p1

    .line 289
    :cond_3
    :try_start_3
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 291
    .local v1, "ix":I
    if-ltz v1, :cond_31

    .line 292
    nop

    .line 293
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .line 294
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 292
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 296
    :cond_31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 297
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_41} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_41} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_41} :catch_42

    return-object v3

    .line 300
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "ix":I
    .end local v2    # "value":I
    :catch_42
    move-exception v0

    goto :goto_48

    .line 299
    :catch_44
    move-exception v0

    goto :goto_47

    .line 298
    :catch_46
    move-exception v0

    .line 301
    :goto_47
    nop

    .line 302
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse integer range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object p1
.end method

.method static blacklist parseIntSafely(Ljava/lang/Object;I)I
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # I

    .line 271
    if-nez p0, :cond_3

    .line 272
    return p1

    .line 275
    :cond_3
    :try_start_3
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 276
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_a} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_b

    return v1

    .line 278
    .end local v0    # "s":Ljava/lang/String;
    :catch_b
    move-exception v0

    goto :goto_f

    .line 277
    :catch_d
    move-exception v0

    .line 279
    nop

    .line 280
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse integer \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return p1
.end method

.method static blacklist parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 307
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez p0, :cond_3

    .line 308
    return-object p1

    .line 311
    :cond_3
    :try_start_3
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 312
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 313
    .local v1, "ix":I
    if-ltz v1, :cond_31

    .line 314
    nop

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 314
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 318
    :cond_31
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 319
    .local v2, "value":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_41} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_41} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_41} :catch_42

    return-object v4

    .line 322
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "ix":I
    .end local v2    # "value":J
    :catch_42
    move-exception v0

    goto :goto_48

    .line 321
    :catch_44
    move-exception v0

    goto :goto_47

    .line 320
    :catch_46
    move-exception v0

    .line 323
    :goto_47
    nop

    .line 324
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse long range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-object p1
.end method

.method static blacklist parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 329
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-nez p0, :cond_3

    .line 330
    return-object p1

    .line 333
    :cond_3
    :try_start_3
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 334
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 335
    .local v1, "ix":I
    if-ltz v1, :cond_27

    .line 336
    nop

    .line 337
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v3

    .line 336
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 340
    :cond_27
    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    .line 341
    .local v2, "value":Landroid/util/Rational;
    invoke-static {v2, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_2f} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_2f} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_2f} :catch_30

    return-object v3

    .line 344
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "ix":I
    .end local v2    # "value":Landroid/util/Rational;
    :catch_30
    move-exception v0

    goto :goto_36

    .line 343
    :catch_32
    move-exception v0

    goto :goto_35

    .line 342
    :catch_34
    move-exception v0

    .line 345
    :goto_35
    nop

    .line 346
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse rational range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object p1
.end method

.method static blacklist parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # Landroid/util/Size;

    .line 258
    if-nez p0, :cond_3

    .line 259
    return-object p1

    .line 262
    :cond_3
    :try_start_3
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_a} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_b

    return-object v0

    .line 264
    :catch_b
    move-exception v0

    goto :goto_f

    .line 263
    :catch_d
    move-exception v0

    .line 265
    nop

    .line 266
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object p1
.end method

.method static blacklist parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 352
    return-object v0

    .line 355
    :cond_4
    :try_start_4
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 356
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 357
    .local v2, "ix":I
    if-ltz v2, :cond_28

    .line 358
    nop

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 360
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 362
    :cond_28
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    .line 363
    .local v3, "value":Landroid/util/Size;
    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_30} :catch_35
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_30} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_30} :catch_31

    return-object v0

    .line 366
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "ix":I
    .end local v3    # "value":Landroid/util/Size;
    :catch_31
    move-exception v1

    goto :goto_37

    .line 365
    :catch_33
    move-exception v1

    goto :goto_36

    .line 364
    :catch_35
    move-exception v1

    .line 367
    :goto_36
    nop

    .line 368
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not parse size range \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v0
.end method

.method public static blacklist parseVibrationEffect(Landroid/os/Vibrator;Landroid/net/Uri;)Landroid/os/VibrationEffect;
    .registers 9
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "vibrationUri"    # Landroid/net/Uri;

    .line 791
    const/4 v0, 0x0

    const-string v1, "Utils"

    if-nez p1, :cond_b

    .line 792
    const-string v2, "The vibration Uri is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-object v0

    .line 795
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_81

    const-string v3, "synchronized"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_81

    .line 800
    :cond_1a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    .local v3, "vibrationFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 803
    :try_start_2b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 804
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 805
    invoke-static {v5}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v5

    .line 807
    .local v5, "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    invoke-virtual {v5, p0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3f} :catch_40

    return-object v0

    .line 808
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    :catch_40
    move-exception v4

    .line 809
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_80

    .line 813
    :cond_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File exists:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", canRead:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 814
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 813
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_80
    return-object v0

    .line 797
    .end local v3    # "vibrationFile":Ljava/io/File;
    :cond_81
    :goto_81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore the vibration parsing for file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-object v0
.end method

.method static blacklist scaleRange(Landroid/util/Range;II)Landroid/util/Range;
    .registers 5
    .param p1, "num"    # I
    .param p2, "den"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;II)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 217
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-ne p1, p2, :cond_3

    .line 218
    return-object p0

    .line 220
    :cond_3
    nop

    .line 221
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-static {v1, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;
    .registers 10
    .param p0, "ratio"    # Landroid/util/Rational;
    .param p1, "num"    # I
    .param p2, "den"    # I

    .line 208
    invoke-static {p1, p2}, Landroid/media/Utils;->gcd(II)I

    move-result v0

    .line 209
    .local v0, "common":I
    div-int/2addr p1, v0

    .line 210
    div-int/2addr p2, v0

    .line 211
    new-instance v1, Landroid/util/Rational;

    .line 212
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 213
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, p2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 211
    return-object v1
.end method

.method public static blacklist sortDistinctRanges([Landroid/util/Range;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([",
            "Landroid/util/Range<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    new-instance v0, Landroid/media/Utils$1;

    invoke-direct {v0}, Landroid/media/Utils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 104
    return-void
.end method

.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final mAccessFilename:Z

.field private final mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/app/DownloadManager$CursorTranslator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->-assertionsDisabled:Z

    #@b
    .line 1465
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "accessFilename"    # Z

    #@0
    .prologue
    .line 1470
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 1471
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    #@5
    .line 1472
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    #@7
    .line 1469
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1555
    const/16 v0, 0x190

    #@2
    if-gt v0, p1, :cond_1

    #@4
    const/16 v0, 0x1e8

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 1558
    :cond_0
    int-to-long v0, p1

    #@9
    return-wide v0

    #@a
    .line 1556
    :cond_1
    const/16 v0, 0x1f4

    #@c
    if-gt v0, p1, :cond_2

    #@e
    const/16 v0, 0x258

    #@10
    if-lt p1, v0, :cond_0

    #@12
    .line 1561
    :cond_2
    sparse-switch p1, :sswitch_data_0

    #@15
    .line 1588
    const-wide/16 v0, 0x3e8

    #@17
    return-wide v0

    #@18
    .line 1563
    :sswitch_0
    const-wide/16 v0, 0x3e9

    #@1a
    return-wide v0

    #@1b
    .line 1567
    :sswitch_1
    const-wide/16 v0, 0x3ea

    #@1d
    return-wide v0

    #@1e
    .line 1570
    :sswitch_2
    const-wide/16 v0, 0x3ec

    #@20
    return-wide v0

    #@21
    .line 1573
    :sswitch_3
    const-wide/16 v0, 0x3ed

    #@23
    return-wide v0

    #@24
    .line 1576
    :sswitch_4
    const-wide/16 v0, 0x3ee

    #@26
    return-wide v0

    #@27
    .line 1579
    :sswitch_5
    const-wide/16 v0, 0x3ef

    #@29
    return-wide v0

    #@2a
    .line 1582
    :sswitch_6
    const-wide/16 v0, 0x3f0

    #@2c
    return-wide v0

    #@2d
    .line 1585
    :sswitch_7
    const-wide/16 v0, 0x3f1

    #@2f
    return-wide v0

    #@30
    .line 1561
    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_5
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1509
    const-string/jumbo v5, "destination"

    #@4
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    #@7
    move-result v5

    #@8
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    #@b
    move-result-wide v0

    #@c
    .line 1510
    .local v0, "destinationType":J
    const-wide/16 v6, 0x4

    #@e
    cmp-long v5, v0, v6

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 1511
    const-wide/16 v6, 0x0

    #@14
    cmp-long v5, v0, v6

    #@16
    if-nez v5, :cond_1

    #@18
    .line 1513
    :cond_0
    const-string/jumbo v5, "local_filename"

    #@1b
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    #@1e
    move-result v5

    #@1f
    invoke-super {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 1514
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_2

    #@25
    .line 1515
    return-object v8

    #@26
    .line 1512
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x6

    #@28
    cmp-long v5, v0, v6

    #@2a
    if-eqz v5, :cond_0

    #@2c
    .line 1521
    const-string/jumbo v5, "_id"

    #@2f
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    #@32
    move-result v5

    #@33
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    #@36
    move-result-wide v2

    #@37
    .line 1522
    .local v2, "downloadId":J
    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    #@39
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    return-object v5

    #@42
    .line 1517
    .end local v2    # "downloadId":J
    .restart local v4    # "localPath":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/io/File;

    #@44
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@47
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    return-object v5
.end method

.method private getPausedReason(I)J
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1539
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1550
    const-wide/16 v0, 0x4

    #@5
    return-wide v0

    #@6
    .line 1541
    :pswitch_0
    const-wide/16 v0, 0x1

    #@8
    return-wide v0

    #@9
    .line 1544
    :pswitch_1
    const-wide/16 v0, 0x2

    #@b
    return-wide v0

    #@c
    .line 1547
    :pswitch_2
    const-wide/16 v0, 0x3

    #@e
    return-wide v0

    #@f
    .line 1539
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1526
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1534
    const-wide/16 v0, 0x0

    #@9
    return-wide v0

    #@a
    .line 1528
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    #@d
    move-result-wide v0

    #@e
    return-wide v0

    #@f
    .line 1531
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 1526
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1593
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1610
    :pswitch_0
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    .line 1595
    :pswitch_1
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 1598
    :pswitch_2
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    .line 1604
    :pswitch_3
    const/4 v0, 0x4

    #@18
    return v0

    #@19
    .line 1607
    :pswitch_4
    const/16 v0, 0x8

    #@1b
    return v0

    #@1c
    .line 1611
    :cond_0
    const/16 v0, 0x10

    #@1e
    return v0

    #@1f
    .line 1593
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 1477
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 1482
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "reason"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1483
    const-string/jumbo v0, "status"

    #@10
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    #@17
    move-result v0

    #@18
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    #@1b
    move-result-wide v0

    #@1c
    return-wide v0

    #@1d
    .line 1484
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "status"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 1485
    const-string/jumbo v0, "status"

    #@2d
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    #@30
    move-result v0

    #@31
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    #@34
    move-result v0

    #@35
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    #@38
    move-result v0

    #@39
    int-to-long v0, v0

    #@3a
    return-wide v0

    #@3b
    .line 1487
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    #@3e
    move-result-wide v0

    #@3f
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 1493
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1494
    .local v0, "columnName":Ljava/lang/String;
    const-string/jumbo v1, "local_uri"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1496
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1494
    :cond_0
    const-string/jumbo v1, "local_filename"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 1498
    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 1499
    new-instance v1, Ljava/lang/SecurityException;

    #@21
    .line 1500
    const-string/jumbo v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    #@24
    .line 1499
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 1504
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

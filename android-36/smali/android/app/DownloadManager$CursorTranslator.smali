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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o mAccessFilename:Z

.field private final greylist-max-o mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1703
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "accessFilename"    # Z

    .line 1708
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1709
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1710
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    .line 1711
    return-void
.end method

.method private greylist-max-o getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .line 1793
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 1796
    :cond_10
    int-to-long v0, p1

    return-wide v0

    .line 1799
    :cond_12
    sparse-switch p1, :sswitch_data_30

    .line 1826
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 1811
    :sswitch_18
    const-wide/16 v0, 0x3ed

    return-wide v0

    .line 1808
    :sswitch_1b
    const-wide/16 v0, 0x3ec

    return-wide v0

    .line 1805
    :sswitch_1e
    const-wide/16 v0, 0x3ea

    return-wide v0

    .line 1801
    :sswitch_21
    const-wide/16 v0, 0x3e9

    return-wide v0

    .line 1820
    :sswitch_24
    const-wide/16 v0, 0x3f0

    return-wide v0

    .line 1823
    :sswitch_27
    const-wide/16 v0, 0x3f1

    return-wide v0

    .line 1817
    :sswitch_2a
    const-wide/16 v0, 0x3ef

    return-wide v0

    .line 1814
    :sswitch_2d
    const-wide/16 v0, 0x3ee

    return-wide v0

    :sswitch_data_30
    .sparse-switch
        0xc6 -> :sswitch_2d
        0xc7 -> :sswitch_2a
        0x1e8 -> :sswitch_27
        0x1e9 -> :sswitch_24
        0x1ec -> :sswitch_21
        0x1ed -> :sswitch_1e
        0x1ee -> :sswitch_1e
        0x1ef -> :sswitch_1b
        0x1f1 -> :sswitch_18
    .end sparse-switch
.end method

.method private greylist-max-o getLocalUri()Ljava/lang/String;
    .registers 6

    .line 1747
    const-string v0, "destination"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1748
    .local v0, "destinationType":J
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    goto :goto_32

    .line 1759
    :cond_1d
    const-string v2, "_id"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1760
    .local v2, "downloadId":J
    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1751
    .end local v2    # "downloadId":J
    :cond_32
    :goto_32
    const-string/jumbo v2, "local_filename"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1752
    .local v2, "localPath":Ljava/lang/String;
    if-nez v2, :cond_41

    .line 1753
    const/4 v3, 0x0

    return-object v3

    .line 1755
    :cond_41
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 1777
    packed-switch p1, :pswitch_data_10

    .line 1788
    const-wide/16 v0, 0x4

    return-wide v0

    .line 1785
    :pswitch_6
    const-wide/16 v0, 0x3

    return-wide v0

    .line 1782
    :pswitch_9
    const-wide/16 v0, 0x2

    return-wide v0

    .line 1779
    :pswitch_c
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 1764
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1772
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1766
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 1769
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private greylist-max-o translateStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .line 1831
    packed-switch p1, :pswitch_data_10

    .line 1848
    :pswitch_3
    goto :goto_d

    .line 1845
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 1842
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1836
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1833
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1849
    :goto_d
    const/16 v0, 0x10

    return v0

    :pswitch_data_10
    .packed-switch 0xbe
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public whitelist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 1715
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 1720
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_1d

    .line 1721
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    .line 1722
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1723
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1725
    :cond_35
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # I

    .line 1731
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    :cond_b
    goto :goto_22

    :sswitch_c
    const-string/jumbo v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_23

    :sswitch_17
    const-string/jumbo v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_23

    :goto_22
    const/4 v1, -0x1

    :goto_23
    packed-switch v1, :pswitch_data_48

    goto :goto_39

    .line 1736
    :pswitch_27
    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-eqz v1, :cond_2c

    goto :goto_39

    .line 1737
    :cond_2c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1734
    :pswitch_34
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1742
    :goto_39
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_3e
    .sparse-switch
        -0x47d0d968 -> :sswitch_17
        0x150cc5b -> :sswitch_c
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_34
        :pswitch_27
    .end packed-switch
.end method

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
.field private mBaseUri:Landroid/net/Uri;


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
    .line 1267
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1271
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 1272
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    #@5
    .line 1270
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1344
    const/16 v0, 0x190

    #@2
    if-gt v0, p1, :cond_1

    #@4
    const/16 v0, 0x1e8

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 1347
    :cond_0
    int-to-long v0, p1

    #@9
    return-wide v0

    #@a
    .line 1345
    :cond_1
    const/16 v0, 0x1f4

    #@c
    if-gt v0, p1, :cond_2

    #@e
    const/16 v0, 0x258

    #@10
    if-lt p1, v0, :cond_0

    #@12
    .line 1350
    :cond_2
    sparse-switch p1, :sswitch_data_0

    #@15
    .line 1377
    const-wide/16 v0, 0x3e8

    #@17
    return-wide v0

    #@18
    .line 1352
    :sswitch_0
    const-wide/16 v0, 0x3e9

    #@1a
    return-wide v0

    #@1b
    .line 1356
    :sswitch_1
    const-wide/16 v0, 0x3ea

    #@1d
    return-wide v0

    #@1e
    .line 1359
    :sswitch_2
    const-wide/16 v0, 0x3ec

    #@20
    return-wide v0

    #@21
    .line 1362
    :sswitch_3
    const-wide/16 v0, 0x3ed

    #@23
    return-wide v0

    #@24
    .line 1365
    :sswitch_4
    const-wide/16 v0, 0x3ee

    #@26
    return-wide v0

    #@27
    .line 1368
    :sswitch_5
    const-wide/16 v0, 0x3ef

    #@29
    return-wide v0

    #@2a
    .line 1371
    :sswitch_6
    const-wide/16 v0, 0x3f0

    #@2c
    return-wide v0

    #@2d
    .line 1374
    :sswitch_7
    const-wide/16 v0, 0x3f1

    #@2f
    return-wide v0

    #@30
    .line 1350
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
    .line 1298
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
    .line 1299
    .local v0, "destinationType":J
    const-wide/16 v6, 0x4

    #@e
    cmp-long v5, v0, v6

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 1300
    const-wide/16 v6, 0x0

    #@14
    cmp-long v5, v0, v6

    #@16
    if-nez v5, :cond_1

    #@18
    .line 1302
    :cond_0
    const-string/jumbo v5, "local_filename"

    #@1b
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 1303
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_2

    #@25
    .line 1304
    return-object v8

    #@26
    .line 1301
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x6

    #@28
    cmp-long v5, v0, v6

    #@2a
    if-eqz v5, :cond_0

    #@2c
    .line 1310
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
    .line 1311
    .local v2, "downloadId":J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

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
    .line 1306
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
    .line 1328
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1339
    const-wide/16 v0, 0x4

    #@5
    return-wide v0

    #@6
    .line 1330
    :pswitch_0
    const-wide/16 v0, 0x1

    #@8
    return-wide v0

    #@9
    .line 1333
    :pswitch_1
    const-wide/16 v0, 0x2

    #@b
    return-wide v0

    #@c
    .line 1336
    :pswitch_2
    const-wide/16 v0, 0x3

    #@e
    return-wide v0

    #@f
    .line 1328
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
    .line 1315
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1323
    const-wide/16 v0, 0x0

    #@9
    return-wide v0

    #@a
    .line 1317
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    #@d
    move-result-wide v0

    #@e
    return-wide v0

    #@f
    .line 1320
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 1315
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
    .line 1382
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1399
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
    .line 1384
    :pswitch_1
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 1387
    :pswitch_2
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    .line 1393
    :pswitch_3
    const/4 v0, 0x4

    #@18
    return v0

    #@19
    .line 1396
    :pswitch_4
    const/16 v0, 0x8

    #@1b
    return v0

    #@1c
    .line 1400
    :cond_0
    const/16 v0, 0x10

    #@1e
    return v0

    #@1f
    .line 1382
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
    .line 1277
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
    .line 1282
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
    .line 1283
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
    .line 1284
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
    .line 1285
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
    .line 1287
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    #@3e
    move-result-wide v0

    #@3f
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 1293
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "local_uri"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    :goto_0
    return-object v0

    #@12
    .line 1294
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    goto :goto_0
.end method

.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1281
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "value"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 1280
    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    #@b
    .line 1276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "versionSystemProperty"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "getCommand"    # Ljava/lang/String;
    .param p4, "setCommand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1285
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@a
    .line 1286
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    #@e
    .line 1289
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    #@11
    .line 1298
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    #@13
    .line 1299
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@15
    .line 1300
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    #@17
    .line 1301
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    #@19
    .line 1297
    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 1305
    const/4 v0, 0x0

    #@1
    .line 1306
    .local v0, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    #@2
    .line 1307
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    #@4
    .line 1308
    .local v0, "cp":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    #@6
    .line 1309
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@8
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .end local v0    # "cp":Landroid/content/IContentProvider;
    .local v1, "cp":Landroid/content/IContentProvider;
    move-object v0, v1

    #@13
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_0
    monitor-exit p0

    #@14
    .line 1312
    return-object v0

    #@15
    .line 1306
    .end local v0    # "cp":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit p0

    #@17
    throw v2
.end method


# virtual methods
.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1331
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v5

    #@4
    move/from16 v0, p3

    #@6
    if-ne v0, v5, :cond_1

    #@8
    const/16 v17, 0x1

    #@a
    .line 1332
    .local v17, "isSelf":Z
    :goto_0
    if-eqz v17, :cond_3

    #@c
    .line 1333
    move-object/from16 v0, p0

    #@e
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    #@10
    const-wide/16 v6, 0x0

    #@12
    invoke-static {v5, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@15
    move-result-wide v18

    #@16
    .line 1336
    .local v18, "newValuesVersion":J
    monitor-enter p0

    #@17
    .line 1337
    :try_start_0
    move-object/from16 v0, p0

    #@19
    iget-wide v6, v0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    #@1b
    cmp-long v5, v6, v18

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 1343
    move-object/from16 v0, p0

    #@21
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@23
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    #@26
    .line 1344
    move-wide/from16 v0, v18

    #@28
    move-object/from16 v2, p0

    #@2a
    iput-wide v0, v2, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    #@2c
    .line 1347
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_2

    #@38
    .line 1348
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@3c
    move-object/from16 v0, p2

    #@3e
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit p0

    #@45
    return-object v5

    #@46
    .line 1331
    .end local v17    # "isSelf":Z
    .end local v18    # "newValuesVersion":J
    :cond_1
    const/16 v17, 0x0

    #@48
    .restart local v17    # "isSelf":Z
    goto :goto_0

    #@49
    .restart local v18    # "newValuesVersion":J
    :cond_2
    monitor-exit p0

    #@4a
    .line 1356
    .end local v18    # "newValuesVersion":J
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    #@4d
    move-result-object v4

    #@4e
    .line 1362
    .local v4, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    #@50
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    #@52
    if-eqz v5, :cond_6

    #@54
    .line 1364
    const/4 v12, 0x0

    #@55
    .line 1365
    .local v12, "args":Landroid/os/Bundle;
    if-nez v17, :cond_4

    #@57
    .line 1366
    :try_start_1
    new-instance v13, Landroid/os/Bundle;

    #@59
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 1367
    .local v13, "args":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v5, "_user"

    #@5f
    .end local v12    # "args":Landroid/os/Bundle;
    move/from16 v0, p3

    #@61
    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@64
    move-object v12, v13

    #@65
    .line 1369
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-object v6, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-interface {v4, v5, v6, v0, v12}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@72
    move-result-object v14

    #@73
    .line 1370
    .local v14, "b":Landroid/os/Bundle;
    if-eqz v14, :cond_6

    #@75
    .line 1371
    invoke-virtual {v14}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    #@78
    move-result-object v20

    #@79
    .line 1373
    .local v20, "value":Ljava/lang/String;
    if-eqz v17, :cond_5

    #@7b
    .line 1374
    monitor-enter p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@7c
    .line 1375
    :try_start_4
    move-object/from16 v0, p0

    #@7e
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@80
    move-object/from16 v0, p2

    #@82
    move-object/from16 v1, v20

    #@84
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@87
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@88
    .line 1382
    :cond_5
    return-object v20

    #@89
    .line 1336
    .end local v4    # "cp":Landroid/content/IContentProvider;
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v20    # "value":Ljava/lang/String;
    .restart local v18    # "newValuesVersion":J
    :catchall_0
    move-exception v5

    #@8a
    monitor-exit p0

    #@8b
    throw v5

    #@8c
    .line 1374
    .end local v18    # "newValuesVersion":J
    .restart local v4    # "cp":Landroid/content/IContentProvider;
    .restart local v14    # "b":Landroid/os/Bundle;
    .restart local v20    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v5

    #@8d
    :try_start_6
    monitor-exit p0

    #@8e
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@8f
    .line 1386
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v20    # "value":Ljava/lang/String;
    :catch_0
    move-exception v16

    #@90
    .line 1392
    :cond_6
    :goto_1
    const/4 v15, 0x0

    #@91
    .line 1394
    .local v15, "c":Landroid/database/Cursor;
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    move-object/from16 v0, p0

    #@97
    iget-object v6, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@99
    sget-object v7, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    #@9b
    const-string/jumbo v8, "name=?"

    #@9e
    .line 1395
    const/4 v9, 0x1

    #@9f
    new-array v9, v9, [Ljava/lang/String;

    #@a1
    const/4 v10, 0x0

    #@a2
    aput-object p2, v9, v10

    #@a4
    const/4 v10, 0x0

    #@a5
    const/4 v11, 0x0

    #@a6
    .line 1394
    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@a9
    move-result-object v15

    #@aa
    .line 1396
    .local v15, "c":Landroid/database/Cursor;
    if-nez v15, :cond_8

    #@ac
    .line 1397
    const-string/jumbo v5, "Settings"

    #@af
    new-instance v6, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v7, "Can\'t get key "

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v6

    #@bb
    move-object/from16 v0, p2

    #@bd
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v6

    #@c1
    const-string/jumbo v7, " from "

    #@c4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v7, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@cc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@d7
    .line 1398
    const/4 v5, 0x0

    #@d8
    .line 1414
    if-eqz v15, :cond_7

    #@da
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@dd
    .line 1398
    :cond_7
    return-object v5

    #@de
    .line 1401
    :cond_8
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    #@e1
    move-result v5

    #@e2
    if-eqz v5, :cond_a

    #@e4
    const/4 v5, 0x0

    #@e5
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e8
    move-result-object v20

    #@e9
    .line 1402
    :goto_2
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@ea
    .line 1403
    :try_start_9
    move-object/from16 v0, p0

    #@ec
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@ee
    move-object/from16 v0, p2

    #@f0
    move-object/from16 v1, v20

    #@f2
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@f5
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@f6
    .line 1414
    if-eqz v15, :cond_9

    #@f8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@fb
    .line 1409
    :cond_9
    return-object v20

    #@fc
    .line 1401
    :cond_a
    const/16 v20, 0x0

    #@fe
    .local v20, "value":Ljava/lang/String;
    goto :goto_2

    #@ff
    .line 1402
    .end local v20    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v5

    #@100
    :try_start_b
    monitor-exit p0

    #@101
    throw v5
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@102
    .line 1410
    .end local v15    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v16

    #@103
    .line 1411
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string/jumbo v5, "Settings"

    #@106
    new-instance v6, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v7, "Can\'t get key "

    #@10e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    move-object/from16 v0, p2

    #@114
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v6

    #@118
    const-string/jumbo v7, " from "

    #@11b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v6

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v7, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v6

    #@127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v6

    #@12b
    move-object/from16 v0, v16

    #@12d
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@130
    .line 1412
    const/4 v5, 0x0

    #@131
    .line 1414
    if-eqz v15, :cond_b

    #@133
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@136
    .line 1412
    :cond_b
    return-object v5

    #@137
    .line 1413
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v5

    #@138
    .line 1414
    if-eqz v15, :cond_c

    #@13a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@13d
    .line 1413
    :cond_c
    throw v5

    #@13e
    .line 1386
    .restart local v13    # "args":Landroid/os/Bundle;
    :catch_2
    move-exception v16

    #@13f
    .restart local v16    # "e":Landroid/os/RemoteException;
    move-object v12, v13

    #@140
    .end local v13    # "args":Landroid/os/Bundle;
    .local v12, "args":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1318
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1319
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    #@8
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1320
    const-string/jumbo v3, "_user"

    #@e
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    .line 1321
    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    #@14
    move-result-object v1

    #@15
    .line 1322
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    #@1b
    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1327
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 1323
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :catch_0
    move-exception v2

    #@21
    .line 1324
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Settings"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Can\'t set key "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    const-string/jumbo v5, " in "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 1325
    const/4 v3, 0x0

    #@49
    return v3
.end method

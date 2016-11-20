.class Lcom/android/commands/content/Content$QueryCommand;
.super Lcom/android/commands/content/Content$DeleteCommand;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCommand"
.end annotation


# instance fields
.field final mProjection:[Ljava/lang/String;

.field final mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 545
    invoke-direct {p0, p1, p2, p4}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;ILjava/lang/String;)V

    #@3
    .line 546
    iput-object p3, p0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    #@5
    .line 547
    iput-object p5, p0, Lcom/android/commands/content/Content$QueryCommand;->mSortOrder:Ljava/lang/String;

    #@7
    .line 544
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 19
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    invoke-static {}, Lcom/android/commands/content/Content$QueryCommand;->resolveCallingPackage()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/commands/content/Content$QueryCommand;->mUri:Landroid/net/Uri;

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v5, v0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v6, v0, Lcom/android/commands/content/Content$QueryCommand;->mWhere:Ljava/lang/String;

    #@10
    .line 553
    move-object/from16 v0, p0

    #@12
    iget-object v8, v0, Lcom/android/commands/content/Content$QueryCommand;->mSortOrder:Ljava/lang/String;

    #@14
    const/4 v7, 0x0

    #@15
    const/4 v9, 0x0

    #@16
    move-object/from16 v2, p1

    #@18
    .line 552
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@1b
    move-result-object v15

    #@1c
    .line 554
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_0

    #@1e
    .line 555
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v3, "No result found."

    #@23
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 556
    return-void

    #@27
    .line 559
    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 560
    const/16 v17, 0x0

    #@2f
    .line 561
    .local v17, "rowIndex":I
    new-instance v10, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    .line 563
    .local v10, "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v2, 0x0

    #@35
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@38
    .line 564
    const-string/jumbo v2, "Row: "

    #@3b
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    move/from16 v0, v17

    #@41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v3, " "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 565
    add-int/lit8 v17, v17, 0x1

    #@4d
    .line 566
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    #@50
    move-result v11

    #@51
    .line 567
    .local v11, "columnCount":I
    const/16 v16, 0x0

    #@53
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@55
    if-ge v0, v11, :cond_3

    #@57
    .line 568
    if-lez v16, :cond_2

    #@59
    .line 569
    const-string/jumbo v2, ", "

    #@5c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 571
    :cond_2
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    .line 572
    .local v13, "columnName":Ljava/lang/String;
    const/4 v14, 0x0

    #@64
    .line 573
    .local v14, "columnValue":Ljava/lang/String;
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@67
    move-result v12

    #@68
    .line 574
    .local v12, "columnIndex":I
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getType(I)I

    #@6b
    move-result v18

    #@6c
    .line 575
    .local v18, "type":I
    packed-switch v18, :pswitch_data_0

    #@6f
    .line 592
    .end local v14    # "columnValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    const-string/jumbo v3, "="

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 567
    add-int/lit8 v16, v16, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 577
    .restart local v14    # "columnValue":Ljava/lang/String;
    :pswitch_0
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getFloat(I)F

    #@83
    move-result v2

    #@84
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@87
    move-result-object v14

    #@88
    .local v14, "columnValue":Ljava/lang/String;
    goto :goto_1

    #@89
    .line 580
    .local v14, "columnValue":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getLong(I)J

    #@8c
    move-result-wide v2

    #@8d
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@90
    move-result-object v14

    #@91
    .local v14, "columnValue":Ljava/lang/String;
    goto :goto_1

    #@92
    .line 583
    .local v14, "columnValue":Ljava/lang/String;
    :pswitch_2
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@95
    move-result-object v14

    #@96
    .local v14, "columnValue":Ljava/lang/String;
    goto :goto_1

    #@97
    .line 586
    .local v14, "columnValue":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v14, "BLOB"

    #@9a
    .local v14, "columnValue":Ljava/lang/String;
    goto :goto_1

    #@9b
    .line 589
    .local v14, "columnValue":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v14, "NULL"

    #@9e
    .local v14, "columnValue":Ljava/lang/String;
    goto :goto_1

    #@9f
    .line 594
    .end local v12    # "columnIndex":I
    .end local v13    # "columnName":Ljava/lang/String;
    .end local v14    # "columnValue":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a1
    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@a4
    .line 595
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a7
    move-result v2

    #@a8
    if-nez v2, :cond_1

    #@aa
    .line 600
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "columnCount":I
    .end local v16    # "i":I
    .end local v17    # "rowIndex":I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@ad
    .line 551
    return-void

    #@ae
    .line 597
    :cond_4
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b0
    const-string/jumbo v3, "No result found."

    #@b3
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    goto :goto_2

    #@b7
    .line 599
    :catchall_0
    move-exception v2

    #@b8
    .line 600
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@bb
    .line 599
    throw v2

    #@bc
    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

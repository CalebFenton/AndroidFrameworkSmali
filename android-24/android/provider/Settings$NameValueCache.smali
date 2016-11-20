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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1526
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
    .line 1525
    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    #@b
    .line 1520
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1530
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@a
    .line 1533
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    #@d
    .line 1544
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@f
    .line 1545
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    #@11
    .line 1546
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    #@13
    .line 1543
    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 1550
    const/4 v0, 0x0

    #@1
    .line 1551
    .local v0, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    #@2
    .line 1552
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    #@4
    .line 1553
    .local v0, "cp":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    #@6
    .line 1554
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
    .line 1557
    return-object v0

    #@15
    .line 1551
    .end local v0    # "cp":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit p0

    #@17
    throw v2
.end method


# virtual methods
.method synthetic -android_provider_Settings$NameValueCache_lambda$1()V
    .locals 3

    #@0
    .prologue
    .line 1647
    monitor-enter p0

    #@1
    .line 1648
    :try_start_0
    const-string/jumbo v1, "Settings"

    #@4
    const-string/jumbo v2, "Error accessing generation tracker - removing"

    #@7
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 1650
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1651
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@10
    .line 1653
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@13
    .line 1654
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    #@16
    .line 1655
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    #@1c
    .line 0
    return-void

    #@1d
    .line 1647
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1576
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v3

    #@4
    move/from16 v0, p3

    #@6
    if-ne v0, v3, :cond_4

    #@8
    const/16 v18, 0x1

    #@a
    .line 1577
    .local v18, "isSelf":Z
    :goto_0
    if-eqz v18, :cond_1

    #@c
    .line 1578
    monitor-enter p0

    #@d
    .line 1579
    :try_start_0
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 1580
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@17
    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_5

    #@1d
    .line 1586
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@21
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit p0

    #@25
    .line 1597
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    #@28
    move-result-object v2

    #@29
    .line 1603
    .local v2, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    #@2d
    if-eqz v3, :cond_7

    #@2f
    .line 1605
    const/4 v10, 0x0

    #@30
    .line 1606
    .local v10, "args":Landroid/os/Bundle;
    if-nez v18, :cond_f

    #@32
    .line 1607
    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    #@34
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    .line 1608
    .local v11, "args":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v3, "_user"

    #@3a
    .end local v10    # "args":Landroid/os/Bundle;
    move/from16 v0, p3

    #@3c
    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3f
    .line 1610
    :goto_1
    const/16 v19, 0x0

    #@41
    .line 1611
    .local v19, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@42
    .line 1612
    if-eqz v18, :cond_6

    #@44
    :try_start_3
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@48
    if-nez v3, :cond_6

    #@4a
    .line 1613
    const/16 v19, 0x1

    #@4c
    .line 1614
    if-nez v11, :cond_e

    #@4e
    .line 1615
    new-instance v10, Landroid/os/Bundle;

    #@50
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@53
    .line 1617
    .end local v11    # "args":Landroid/os/Bundle;
    .local v10, "args":Landroid/os/Bundle;
    :goto_2
    :try_start_4
    const-string/jumbo v3, "_track_generation"

    #@56
    const/4 v4, 0x0

    #@57
    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    #@5a
    :goto_3
    :try_start_5
    monitor-exit p0

    #@5b
    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-interface {v2, v3, v4, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@68
    move-result-object v13

    #@69
    .line 1626
    .local v13, "b":Landroid/os/Bundle;
    if-eqz v13, :cond_7

    #@6b
    .line 1627
    const-string/jumbo v3, "value"

    #@6e
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v20

    #@72
    .line 1629
    .local v20, "value":Ljava/lang/String;
    if-eqz v18, :cond_3

    #@74
    .line 1630
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@75
    .line 1631
    if-eqz v19, :cond_2

    #@77
    .line 1633
    :try_start_6
    const-string/jumbo v3, "_track_generation"

    #@7a
    .line 1632
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7d
    move-result-object v12

    #@7e
    check-cast v12, Landroid/util/MemoryIntArray;

    #@80
    .line 1635
    .local v12, "array":Landroid/util/MemoryIntArray;
    const-string/jumbo v3, "_generation_index"

    #@83
    const/4 v4, -0x1

    #@84
    .line 1634
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@87
    move-result v17

    #@88
    .line 1636
    .local v17, "index":I
    if-eqz v12, :cond_2

    #@8a
    if-ltz v17, :cond_2

    #@8c
    .line 1638
    const-string/jumbo v3, "_generation"

    #@8f
    const/4 v4, 0x0

    #@90
    .line 1637
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@93
    move-result v16

    #@94
    .line 1645
    .local v16, "generation":I
    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    #@96
    .line 1646
    new-instance v4, Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;

    #@98
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v4, v0}, Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    #@9d
    .line 1645
    move/from16 v0, v17

    #@9f
    move/from16 v1, v16

    #@a1
    invoke-direct {v3, v12, v0, v1, v4}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    #@a8
    .line 1661
    .end local v12    # "array":Landroid/util/MemoryIntArray;
    .end local v16    # "generation":I
    .end local v17    # "index":I
    :cond_2
    move-object/from16 v0, p0

    #@aa
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@ac
    move-object/from16 v0, p2

    #@ae
    move-object/from16 v1, v20

    #@b0
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@b3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    #@b4
    .line 1668
    :cond_3
    return-object v20

    #@b5
    .line 1576
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v18    # "isSelf":Z
    .end local v19    # "needsGenerationTracker":Z
    .end local v20    # "value":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    #@b7
    goto/16 :goto_0

    #@b9
    .line 1587
    .restart local v18    # "isSelf":Z
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    #@bb
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c2
    move-result v3

    #@c3
    if-eqz v3, :cond_0

    #@c5
    .line 1588
    move-object/from16 v0, p0

    #@c7
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@c9
    move-object/from16 v0, p2

    #@cb
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    move-result-object v3

    #@cf
    check-cast v3, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d1
    monitor-exit p0

    #@d2
    return-object v3

    #@d3
    .line 1578
    :catchall_0
    move-exception v3

    #@d4
    monitor-exit p0

    #@d5
    throw v3

    #@d6
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v11    # "args":Landroid/os/Bundle;
    .restart local v19    # "needsGenerationTracker":Z
    :cond_6
    move-object v10, v11

    #@d7
    .line 1612
    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto :goto_3

    #@d8
    .line 1611
    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    #@d9
    move-object v10, v11

    #@da
    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    :goto_4
    :try_start_9
    monitor-exit p0

    #@db
    throw v3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    #@dc
    .line 1672
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v19    # "needsGenerationTracker":Z
    :catch_0
    move-exception v15

    #@dd
    .line 1678
    :cond_7
    :goto_5
    const/4 v14, 0x0

    #@de
    .line 1680
    .local v14, "c":Landroid/database/Cursor;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    #@e1
    move-result-object v3

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@e6
    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    #@e8
    const-string/jumbo v6, "name=?"

    #@eb
    .line 1681
    const/4 v7, 0x1

    #@ec
    new-array v7, v7, [Ljava/lang/String;

    #@ee
    const/4 v8, 0x0

    #@ef
    aput-object p2, v7, v8

    #@f1
    const/4 v8, 0x0

    #@f2
    const/4 v9, 0x0

    #@f3
    .line 1680
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@f6
    move-result-object v14

    #@f7
    .line 1682
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_9

    #@f9
    .line 1683
    const-string/jumbo v3, "Settings"

    #@fc
    new-instance v4, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v5, "Can\'t get key "

    #@104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v4

    #@10e
    const-string/jumbo v5, " from "

    #@111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v4

    #@115
    move-object/from16 v0, p0

    #@117
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v4

    #@11d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v4

    #@121
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@124
    .line 1684
    const/4 v3, 0x0

    #@125
    .line 1700
    if-eqz v14, :cond_8

    #@127
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@12a
    .line 1684
    :cond_8
    return-object v3

    #@12b
    .line 1630
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local v10    # "args":Landroid/os/Bundle;
    .restart local v13    # "b":Landroid/os/Bundle;
    .restart local v19    # "needsGenerationTracker":Z
    .restart local v20    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v3

    #@12c
    :try_start_b
    monitor-exit p0

    #@12d
    throw v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    #@12e
    .line 1687
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v19    # "needsGenerationTracker":Z
    .end local v20    # "value":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_9
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@131
    move-result v3

    #@132
    if-eqz v3, :cond_b

    #@134
    const/4 v3, 0x0

    #@135
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@138
    move-result-object v20

    #@139
    .line 1688
    :goto_6
    monitor-enter p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@13a
    .line 1689
    :try_start_d
    move-object/from16 v0, p0

    #@13c
    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    #@13e
    move-object/from16 v0, p2

    #@140
    move-object/from16 v1, v20

    #@142
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@145
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@146
    .line 1700
    if-eqz v14, :cond_a

    #@148
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@14b
    .line 1695
    :cond_a
    return-object v20

    #@14c
    .line 1687
    :cond_b
    const/16 v20, 0x0

    #@14e
    .local v20, "value":Ljava/lang/String;
    goto :goto_6

    #@14f
    .line 1688
    .end local v20    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v3

    #@150
    :try_start_f
    monitor-exit p0

    #@151
    throw v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    #@152
    .line 1696
    .end local v14    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v15

    #@153
    .line 1697
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string/jumbo v3, "Settings"

    #@156
    new-instance v4, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v5, "Can\'t get key "

    #@15e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v4

    #@162
    move-object/from16 v0, p2

    #@164
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v4

    #@168
    const-string/jumbo v5, " from "

    #@16b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v4

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    #@173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v4

    #@177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v4

    #@17b
    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    #@17e
    .line 1698
    const/4 v3, 0x0

    #@17f
    .line 1700
    if-eqz v14, :cond_c

    #@181
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@184
    .line 1698
    :cond_c
    return-object v3

    #@185
    .line 1699
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v3

    #@186
    .line 1700
    if-eqz v14, :cond_d

    #@188
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@18b
    .line 1699
    :cond_d
    throw v3

    #@18c
    .line 1672
    .restart local v11    # "args":Landroid/os/Bundle;
    :catch_2
    move-exception v15

    #@18d
    .restart local v15    # "e":Landroid/os/RemoteException;
    move-object v10, v11

    #@18e
    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_5

    #@190
    .line 1611
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v19    # "needsGenerationTracker":Z
    :catchall_5
    move-exception v3

    #@191
    goto/16 :goto_4

    #@193
    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :cond_e
    move-object v10, v11

    #@194
    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_2

    #@196
    .end local v19    # "needsGenerationTracker":Z
    .local v10, "args":Landroid/os/Bundle;
    :cond_f
    move-object v11, v10

    #@197
    .restart local v11    # "args":Landroid/os/Bundle;
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
    .line 1563
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1564
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    #@8
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1565
    const-string/jumbo v3, "_user"

    #@e
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    .line 1566
    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    #@14
    move-result-object v1

    #@15
    .line 1567
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
    .line 1572
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 1568
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :catch_0
    move-exception v2

    #@21
    .line 1569
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
    .line 1570
    const/4 v3, 0x0

    #@49
    return v3
.end method

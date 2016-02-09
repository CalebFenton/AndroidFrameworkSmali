.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$FileList;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method static synthetic -get0(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DropBoxManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/DropBoxManagerService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DropBoxManagerService;)J
    .locals 2

    #@0
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 137
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    #@5
    .line 87
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@7
    .line 88
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@9
    .line 92
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@b
    .line 93
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@d
    .line 94
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@f
    .line 95
    const-wide/16 v2, 0x0

    #@11
    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    #@13
    .line 97
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    #@15
    .line 103
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    #@17
    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    #@1a
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 138
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@1e
    .line 141
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    #@20
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@26
    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    #@28
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@2b
    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    #@2e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31
    .line 146
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    #@34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@37
    .line 147
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@39
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3c
    .line 149
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@3e
    .line 150
    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    #@40
    .line 151
    new-instance v3, Lcom/android/server/DropBoxManagerService$2;

    #@42
    new-instance v4, Landroid/os/Handler;

    #@44
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    #@47
    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    #@4a
    .line 150
    const/4 v4, 0x1

    #@4b
    .line 149
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@4e
    .line 158
    new-instance v1, Lcom/android/server/DropBoxManagerService$3;

    #@50
    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;)V

    #@53
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    #@55
    .line 137
    return-void
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 18
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 654
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v6

    #@5
    .line 660
    .local v6, "t":J
    move-object/from16 v0, p0

    #@7
    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@9
    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@b
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@d
    const-wide/16 v4, 0x2710

    #@f
    add-long/2addr v4, v6

    #@10
    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    #@13
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@16
    move-result-object v15

    #@17
    .line 661
    .local v15, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v10, 0x0

    #@18
    .line 662
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v15}, Ljava/util/SortedSet;->isEmpty()Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 663
    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    #@21
    move-result v2

    #@22
    new-array v2, v2, [Lcom/android/server/DropBoxManagerService$EntryFile;

    #@24
    invoke-interface {v15, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object v10

    #@28
    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v10, [Lcom/android/server/DropBoxManagerService$EntryFile;

    #@2a
    .line 664
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    #@2d
    .line 667
    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_0
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@31
    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@33
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_1

    #@39
    .line 668
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@3d
    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@3f
    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@45
    iget-wide v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@47
    const-wide/16 v4, 0x1

    #@49
    add-long/2addr v2, v4

    #@4a
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@4d
    move-result-wide v6

    #@4e
    .line 671
    :cond_1
    if-eqz v10, :cond_4

    #@50
    .line 672
    const/4 v2, 0x0

    #@51
    array-length v0, v10

    #@52
    move/from16 v17, v0

    #@54
    move/from16 v16, v2

    #@56
    :goto_0
    move/from16 v0, v16

    #@58
    move/from16 v1, v17

    #@5a
    if-ge v0, v1, :cond_4

    #@5c
    aget-object v11, v10, v16

    #@5e
    .line 673
    .local v11, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@62
    iget v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@64
    iget v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@66
    sub-int/2addr v3, v4

    #@67
    iput v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@69
    .line 674
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@6d
    iget-object v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@6f
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v14

    #@73
    check-cast v14, Lcom/android/server/DropBoxManagerService$FileList;

    #@75
    .line 675
    .local v14, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v14, :cond_2

    #@77
    iget-object v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@79
    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_2

    #@7f
    .line 676
    iget v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@81
    iget v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@83
    sub-int/2addr v2, v3

    #@84
    iput v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@86
    .line 678
    :cond_2
    iget v2, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@88
    and-int/lit8 v2, v2, 0x1

    #@8a
    if-nez v2, :cond_3

    #@8c
    .line 679
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@8e
    .line 680
    iget-object v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@94
    iget-object v5, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@96
    const-wide/16 v8, 0x1

    #@98
    add-long v12, v6, v8

    #@9a
    .end local v6    # "t":J
    .local v12, "t":J
    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@a0
    .line 679
    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    #@a3
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    #@a8
    move-wide v6, v12

    #@a9
    .line 672
    .end local v12    # "t":J
    .restart local v6    # "t":J
    :goto_1
    add-int/lit8 v2, v16, 0x1

    #@ab
    move/from16 v16, v2

    #@ad
    goto :goto_0

    #@ae
    .line 682
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@b4
    iget-object v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@b6
    const-wide/16 v8, 0x1

    #@b8
    add-long v12, v6, v8

    #@ba
    .end local v6    # "t":J
    .restart local v12    # "t":J
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    #@bd
    move-object/from16 v0, p0

    #@bf
    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    #@c2
    move-wide v6, v12

    #@c3
    .end local v12    # "t":J
    .restart local v6    # "t":J
    goto :goto_1

    #@c4
    .line 687
    .end local v11    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    #@c6
    .line 688
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@cc
    move-object/from16 v0, p2

    #@ce
    invoke-direct {v2, v3, v0, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    #@d1
    move-object/from16 v0, p0

    #@d3
    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d6
    :goto_2
    monitor-exit p0

    #@d7
    .line 692
    return-wide v6

    #@d8
    .line 690
    :cond_5
    :try_start_1
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@de
    move-object/from16 v0, p0

    #@e0
    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@e2
    move-object/from16 v3, p1

    #@e4
    move-object/from16 v5, p2

    #@e6
    move/from16 v8, p3

    #@e8
    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    #@eb
    move-object/from16 v0, p0

    #@ed
    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f0
    goto :goto_2

    #@f1
    .end local v6    # "t":J
    .end local v15    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v2

    #@f2
    monitor-exit p0

    #@f3
    throw v2
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@3
    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@8
    .line 636
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@a
    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@c
    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@e
    add-int/2addr v2, v3

    #@f
    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@11
    .line 641
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@13
    if-eqz v1, :cond_1

    #@15
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@17
    if-eqz v1, :cond_1

    #@19
    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@1b
    if-lez v1, :cond_1

    #@1d
    .line 642
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@1f
    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    #@27
    .line 643
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    #@29
    .line 644
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    #@2b
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    #@2c
    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    #@2f
    .line 645
    .restart local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@31
    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@33
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 647
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@38
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@3b
    .line 648
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@3d
    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@3f
    add-int/2addr v1, v2

    #@40
    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    #@43
    .line 634
    return-void

    #@44
    :catchall_0
    move-exception v1

    #@45
    monitor-exit p0

    #@46
    throw v1
.end method

.method private declared-synchronized init()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 591
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@3
    if-nez v4, :cond_1

    #@5
    .line 592
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@7
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@f
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    .line 596
    :cond_0
    :try_start_1
    new-instance v4, Landroid/os/StatFs;

    #@17
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@19
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@20
    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@22
    .line 597
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@24
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    #@27
    move-result v4

    #@28
    iput v4, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 603
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@2c
    if-nez v4, :cond_7

    #@2e
    .line 604
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@30
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@33
    move-result-object v3

    #@34
    .line 605
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_3

    #@36
    new-instance v4, Ljava/io/IOException;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "Can\'t list files: "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@51
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    .end local v3    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v4

    #@53
    monitor-exit p0

    #@54
    throw v4

    #@55
    .line 593
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    #@57
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "Can\'t mkdir: "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@70
    throw v4

    #@71
    .line 598
    :catch_0
    move-exception v0

    #@72
    .line 599
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    #@74
    new-instance v5, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v6, "Can\'t statfs: "

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v4

    #@8e
    .line 607
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "files":[Ljava/io/File;
    :cond_3
    new-instance v4, Lcom/android/server/DropBoxManagerService$FileList;

    #@90
    const/4 v5, 0x0

    #@91
    invoke-direct {v4, v5}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    #@94
    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@96
    .line 608
    new-instance v4, Ljava/util/HashMap;

    #@98
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@9b
    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@9d
    .line 611
    const/4 v4, 0x0

    #@9e
    array-length v5, v3

    #@9f
    :goto_0
    if-ge v4, v5, :cond_7

    #@a1
    aget-object v2, v3, v4

    #@a3
    .line 612
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@a6
    move-result-object v6

    #@a7
    const-string/jumbo v7, ".tmp"

    #@aa
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@ad
    move-result v6

    #@ae
    if-eqz v6, :cond_4

    #@b0
    .line 613
    const-string/jumbo v6, "DropBoxManagerService"

    #@b3
    new-instance v7, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v8, "Cleaning temp file: "

    #@bb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v7

    #@bf
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v7

    #@c7
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 614
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@cd
    .line 611
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@cf
    goto :goto_0

    #@d0
    .line 618
    :cond_4
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@d2
    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@d4
    invoke-direct {v1, v2, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    #@d7
    .line 619
    .local v1, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@d9
    if-nez v6, :cond_5

    #@db
    .line 620
    const-string/jumbo v6, "DropBoxManagerService"

    #@de
    new-instance v7, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v8, "Unrecognized file: "

    #@e6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v7

    #@ea
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v7

    #@ee
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v7

    #@f2
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    goto :goto_1

    #@f6
    .line 622
    :cond_5
    iget-wide v6, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@f8
    const-wide/16 v8, 0x0

    #@fa
    cmp-long v6, v6, v8

    #@fc
    if-nez v6, :cond_6

    #@fe
    .line 623
    const-string/jumbo v6, "DropBoxManagerService"

    #@101
    new-instance v7, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v8, "Invalid filename: "

    #@109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v7

    #@10d
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v7

    #@111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v7

    #@115
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@118
    .line 624
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@11b
    goto :goto_1

    #@11c
    .line 628
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11f
    goto :goto_1

    #@120
    .end local v1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_7
    monitor-exit p0

    #@121
    .line 590
    return-void
.end method

.method private declared-synchronized trimToFit()J
    .locals 32

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 702
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@5
    move-object/from16 v26, v0

    #@7
    .line 703
    const-string/jumbo v27, "dropbox_age_seconds"

    #@a
    const v28, 0x3f480

    #@d
    .line 702
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@10
    move-result v6

    #@11
    .line 704
    .local v6, "ageSeconds":I
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@15
    move-object/from16 v26, v0

    #@17
    .line 705
    const-string/jumbo v27, "dropbox_max_files"

    #@1a
    const/16 v28, 0x3e8

    #@1c
    .line 704
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1f
    move-result v12

    #@20
    .line 706
    .local v12, "maxFiles":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@23
    move-result-wide v26

    #@24
    mul-int/lit16 v0, v6, 0x3e8

    #@26
    move/from16 v28, v0

    #@28
    move/from16 v0, v28

    #@2a
    int-to-long v0, v0

    #@2b
    move-wide/from16 v28, v0

    #@2d
    sub-long v8, v26, v28

    #@2f
    .line 707
    .local v8, "cutoffMillis":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@33
    move-object/from16 v26, v0

    #@35
    move-object/from16 v0, v26

    #@37
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@39
    move-object/from16 v26, v0

    #@3b
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    #@3e
    move-result v26

    #@3f
    if-nez v26, :cond_1

    #@41
    .line 708
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@45
    move-object/from16 v26, v0

    #@47
    move-object/from16 v0, v26

    #@49
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@4b
    move-object/from16 v26, v0

    #@4d
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@50
    move-result-object v11

    #@51
    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@53
    .line 709
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@55
    move-wide/from16 v26, v0

    #@57
    cmp-long v26, v26, v8

    #@59
    if-lez v26, :cond_6

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@5f
    move-object/from16 v26, v0

    #@61
    move-object/from16 v0, v26

    #@63
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@65
    move-object/from16 v26, v0

    #@67
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->size()I

    #@6a
    move-result v26

    #@6b
    move/from16 v0, v26

    #@6d
    if-ge v0, v12, :cond_6

    #@6f
    .line 722
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@72
    move-result-wide v24

    #@73
    .line 723
    .local v24, "uptimeMillis":J
    move-object/from16 v0, p0

    #@75
    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    #@77
    move-wide/from16 v26, v0

    #@79
    const-wide/16 v28, 0x1388

    #@7b
    add-long v26, v26, v28

    #@7d
    cmp-long v26, v24, v26

    #@7f
    if-lez v26, :cond_2

    #@81
    .line 724
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@85
    move-object/from16 v26, v0

    #@87
    .line 725
    const-string/jumbo v27, "dropbox_quota_percent"

    #@8a
    const/16 v28, 0xa

    #@8c
    .line 724
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@8f
    move-result v16

    #@90
    .line 726
    .local v16, "quotaPercent":I
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@94
    move-object/from16 v26, v0

    #@96
    .line 727
    const-string/jumbo v27, "dropbox_reserve_percent"

    #@99
    const/16 v28, 0xa

    #@9b
    .line 726
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9e
    move-result v17

    #@9f
    .line 728
    .local v17, "reservePercent":I
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@a3
    move-object/from16 v26, v0

    #@a5
    .line 729
    const-string/jumbo v27, "dropbox_quota_kb"

    #@a8
    const/16 v28, 0x1400

    #@aa
    .line 728
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@ad
    move-result v15

    #@ae
    .line 731
    .local v15, "quotaKb":I
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@b2
    move-object/from16 v26, v0

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@b8
    move-object/from16 v27, v0

    #@ba
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@bd
    move-result-object v27

    #@be
    invoke-virtual/range {v26 .. v27}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    #@c1
    .line 732
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@c5
    move-object/from16 v26, v0

    #@c7
    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@ca
    move-result v7

    #@cb
    .line 733
    .local v7, "available":I
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    #@cf
    move-object/from16 v26, v0

    #@d1
    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockCount()I

    #@d4
    move-result v26

    #@d5
    mul-int v26, v26, v17

    #@d7
    div-int/lit8 v26, v26, 0x64

    #@d9
    sub-int v14, v7, v26

    #@db
    .line 734
    .local v14, "nonreserved":I
    mul-int/lit16 v0, v15, 0x400

    #@dd
    move/from16 v26, v0

    #@df
    move-object/from16 v0, p0

    #@e1
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@e3
    move/from16 v27, v0

    #@e5
    div-int v13, v26, v27

    #@e7
    .line 735
    .local v13, "maximum":I
    mul-int v26, v14, v16

    #@e9
    div-int/lit8 v26, v26, 0x64

    #@eb
    const/16 v27, 0x0

    #@ed
    move/from16 v0, v27

    #@ef
    move/from16 v1, v26

    #@f1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f4
    move-result v26

    #@f5
    move/from16 v0, v26

    #@f7
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    #@fa
    move-result v26

    #@fb
    move/from16 v0, v26

    #@fd
    move-object/from16 v1, p0

    #@ff
    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@101
    .line 736
    move-wide/from16 v0, v24

    #@103
    move-object/from16 v2, p0

    #@105
    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    #@107
    .line 753
    .end local v7    # "available":I
    .end local v13    # "maximum":I
    .end local v14    # "nonreserved":I
    .end local v15    # "quotaKb":I
    .end local v16    # "quotaPercent":I
    .end local v17    # "reservePercent":I
    :cond_2
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@10b
    move-object/from16 v26, v0

    #@10d
    move-object/from16 v0, v26

    #@10f
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@111
    move/from16 v26, v0

    #@113
    move-object/from16 v0, p0

    #@115
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@117
    move/from16 v27, v0

    #@119
    move/from16 v0, v26

    #@11b
    move/from16 v1, v27

    #@11d
    if-le v0, v1, :cond_5

    #@11f
    .line 755
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@123
    move-object/from16 v26, v0

    #@125
    move-object/from16 v0, v26

    #@127
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@129
    move/from16 v23, v0

    #@12b
    .local v23, "unsqueezed":I
    const/16 v18, 0x0

    #@12d
    .line 756
    .local v18, "squeezed":I
    new-instance v22, Ljava/util/TreeSet;

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@133
    move-object/from16 v26, v0

    #@135
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@138
    move-result-object v26

    #@139
    move-object/from16 v0, v22

    #@13b
    move-object/from16 v1, v26

    #@13d
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@140
    .line 757
    .local v22, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@143
    move-result-object v20

    #@144
    .local v20, "tag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@147
    move-result v26

    #@148
    if-eqz v26, :cond_3

    #@14a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14d
    move-result-object v19

    #@14e
    check-cast v19, Lcom/android/server/DropBoxManagerService$FileList;

    #@150
    .line 758
    .local v19, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v18, :cond_9

    #@152
    move-object/from16 v0, v19

    #@154
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@156
    move/from16 v26, v0

    #@158
    move-object/from16 v0, p0

    #@15a
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@15c
    move/from16 v27, v0

    #@15e
    sub-int v27, v27, v23

    #@160
    div-int v27, v27, v18

    #@162
    move/from16 v0, v26

    #@164
    move/from16 v1, v27

    #@166
    if-gt v0, v1, :cond_9

    #@168
    .line 764
    .end local v19    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    #@16a
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@16c
    move/from16 v26, v0

    #@16e
    sub-int v26, v26, v23

    #@170
    div-int v21, v26, v18

    #@172
    .line 767
    .local v21, "tagQuota":I
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@175
    move-result-object v20

    #@176
    :cond_4
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@179
    move-result v26

    #@17a
    if-eqz v26, :cond_5

    #@17c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17f
    move-result-object v19

    #@180
    check-cast v19, Lcom/android/server/DropBoxManagerService$FileList;

    #@182
    .line 768
    .restart local v19    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@186
    move-object/from16 v26, v0

    #@188
    move-object/from16 v0, v26

    #@18a
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@18c
    move/from16 v26, v0

    #@18e
    move-object/from16 v0, p0

    #@190
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@192
    move/from16 v27, v0

    #@194
    move/from16 v0, v26

    #@196
    move/from16 v1, v27

    #@198
    if-ge v0, v1, :cond_e

    #@19a
    .line 784
    .end local v18    # "squeezed":I
    .end local v19    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v20    # "tag$iterator":Ljava/util/Iterator;
    .end local v21    # "tagQuota":I
    .end local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v23    # "unsqueezed":I
    :cond_5
    move-object/from16 v0, p0

    #@19c
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    #@19e
    move/from16 v26, v0

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@1a4
    move/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a6
    mul-int v26, v26, v27

    #@1a8
    move/from16 v0, v26

    #@1aa
    int-to-long v0, v0

    #@1ab
    move-wide/from16 v26, v0

    #@1ad
    monitor-exit p0

    #@1ae
    return-wide v26

    #@1af
    .line 711
    .end local v24    # "uptimeMillis":J
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@1b3
    move-object/from16 v26, v0

    #@1b5
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@1b7
    move-object/from16 v27, v0

    #@1b9
    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1bc
    move-result-object v19

    #@1bd
    check-cast v19, Lcom/android/server/DropBoxManagerService$FileList;

    #@1bf
    .line 712
    .restart local v19    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v19, :cond_7

    #@1c1
    move-object/from16 v0, v19

    #@1c3
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@1c5
    move-object/from16 v26, v0

    #@1c7
    move-object/from16 v0, v26

    #@1c9
    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@1cc
    move-result v26

    #@1cd
    if-eqz v26, :cond_7

    #@1cf
    move-object/from16 v0, v19

    #@1d1
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@1d3
    move/from16 v26, v0

    #@1d5
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@1d7
    move/from16 v27, v0

    #@1d9
    sub-int v26, v26, v27

    #@1db
    move/from16 v0, v26

    #@1dd
    move-object/from16 v1, v19

    #@1df
    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@1e1
    .line 713
    :cond_7
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@1e5
    move-object/from16 v26, v0

    #@1e7
    move-object/from16 v0, v26

    #@1e9
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@1eb
    move-object/from16 v26, v0

    #@1ed
    move-object/from16 v0, v26

    #@1ef
    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@1f2
    move-result v26

    #@1f3
    if-eqz v26, :cond_8

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@1f9
    move-object/from16 v26, v0

    #@1fb
    move-object/from16 v0, v26

    #@1fd
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@1ff
    move/from16 v27, v0

    #@201
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@203
    move/from16 v28, v0

    #@205
    sub-int v27, v27, v28

    #@207
    move/from16 v0, v27

    #@209
    move-object/from16 v1, v26

    #@20b
    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@20d
    .line 714
    :cond_8
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@20f
    move-object/from16 v26, v0

    #@211
    if-eqz v26, :cond_0

    #@213
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@215
    move-object/from16 v26, v0

    #@217
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21a
    goto/16 :goto_0

    #@21c
    .end local v6    # "ageSeconds":I
    .end local v8    # "cutoffMillis":J
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12    # "maxFiles":I
    .end local v19    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v26

    #@21d
    monitor-exit p0

    #@21e
    throw v26

    #@21f
    .line 761
    .restart local v6    # "ageSeconds":I
    .restart local v8    # "cutoffMillis":J
    .restart local v12    # "maxFiles":I
    .restart local v18    # "squeezed":I
    .restart local v19    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v20    # "tag$iterator":Ljava/util/Iterator;
    .restart local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v23    # "unsqueezed":I
    .restart local v24    # "uptimeMillis":J
    :cond_9
    :try_start_2
    move-object/from16 v0, v19

    #@221
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@223
    move/from16 v26, v0

    #@225
    sub-int v23, v23, v26

    #@227
    .line 762
    add-int/lit8 v18, v18, 0x1

    #@229
    goto/16 :goto_1

    #@22b
    .line 770
    .restart local v21    # "tagQuota":I
    :cond_a
    move-object/from16 v0, v19

    #@22d
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@22f
    move-object/from16 v26, v0

    #@231
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@234
    move-result-object v11

    #@235
    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@237
    .line 771
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v19

    #@239
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@23b
    move-object/from16 v26, v0

    #@23d
    move-object/from16 v0, v26

    #@23f
    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@242
    move-result v26

    #@243
    if-eqz v26, :cond_b

    #@245
    move-object/from16 v0, v19

    #@247
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@249
    move/from16 v26, v0

    #@24b
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@24d
    move/from16 v27, v0

    #@24f
    sub-int v26, v26, v27

    #@251
    move/from16 v0, v26

    #@253
    move-object/from16 v1, v19

    #@255
    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@257
    .line 772
    :cond_b
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@25b
    move-object/from16 v26, v0

    #@25d
    move-object/from16 v0, v26

    #@25f
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@261
    move-object/from16 v26, v0

    #@263
    move-object/from16 v0, v26

    #@265
    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@268
    move-result v26

    #@269
    if-eqz v26, :cond_c

    #@26b
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@26f
    move-object/from16 v26, v0

    #@271
    move-object/from16 v0, v26

    #@273
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@275
    move/from16 v27, v0

    #@277
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@279
    move/from16 v28, v0

    #@27b
    sub-int v27, v27, v28

    #@27d
    move/from16 v0, v27

    #@27f
    move-object/from16 v1, v26

    #@281
    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@283
    .line 775
    :cond_c
    :try_start_3
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@285
    move-object/from16 v26, v0

    #@287
    if-eqz v26, :cond_d

    #@289
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@28b
    move-object/from16 v26, v0

    #@28d
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    #@290
    .line 776
    :cond_d
    new-instance v26, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@292
    move-object/from16 v0, p0

    #@294
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@296
    move-object/from16 v27, v0

    #@298
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@29a
    move-object/from16 v28, v0

    #@29c
    iget-wide v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@29e
    move-wide/from16 v30, v0

    #@2a0
    move-object/from16 v0, v26

    #@2a2
    move-object/from16 v1, v27

    #@2a4
    move-object/from16 v2, v28

    #@2a6
    move-wide/from16 v3, v30

    #@2a8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    #@2ab
    move-object/from16 v0, p0

    #@2ad
    move-object/from16 v1, v26

    #@2af
    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b2
    .line 769
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_e
    :goto_3
    :try_start_4
    move-object/from16 v0, v19

    #@2b4
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@2b6
    move/from16 v26, v0

    #@2b8
    move/from16 v0, v26

    #@2ba
    move/from16 v1, v21

    #@2bc
    if-le v0, v1, :cond_4

    #@2be
    move-object/from16 v0, v19

    #@2c0
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@2c2
    move-object/from16 v26, v0

    #@2c4
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    #@2c7
    move-result v26

    #@2c8
    if-eqz v26, :cond_a

    #@2ca
    goto/16 :goto_2

    #@2cc
    .line 777
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catch_0
    move-exception v10

    #@2cd
    .line 778
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v26, "DropBoxManagerService"

    #@2d0
    const-string/jumbo v27, "Can\'t write tombstone file"

    #@2d3
    move-object/from16 v0, v26

    #@2d5
    move-object/from16 v1, v27

    #@2d7
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2da
    goto :goto_3
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 32
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    #@0
    .prologue
    .line 179
    const/16 v24, 0x0

    #@2
    .line 180
    .local v24, "temp":Ljava/io/File;
    const/16 v20, 0x0

    #@4
    .line 181
    .local v20, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    #@7
    move-result-object v23

    #@8
    .line 183
    .local v23, "tag":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    #@b
    move-result v8

    #@c
    .line 184
    .local v8, "flags":I
    and-int/lit8 v28, v8, 0x1

    #@e
    if-eqz v28, :cond_2

    #@10
    new-instance v28, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct/range {v28 .. v28}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v28
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 259
    .end local v8    # "flags":I
    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v24    # "temp":Ljava/io/File;
    :catch_0
    move-exception v7

    #@17
    .line 260
    .local v7, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string/jumbo v28, "DropBoxManagerService"

    #@1a
    new-instance v29, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v30, "Can\'t write: "

    #@22
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v29

    #@26
    move-object/from16 v0, v29

    #@28
    move-object/from16 v1, v23

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v29

    #@2e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v29

    #@32
    move-object/from16 v0, v28

    #@34
    move-object/from16 v1, v29

    #@36
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 262
    if-eqz v20, :cond_0

    #@3b
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@3e
    .line 263
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    #@41
    .line 264
    if-eqz v24, :cond_1

    #@43
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    #@46
    .line 178
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    #@47
    .line 186
    .restart local v8    # "flags":I
    .restart local v20    # "output":Ljava/io/OutputStream;
    .restart local v24    # "temp":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    #@4a
    .line 187
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, v23

    #@4e
    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    move-result v28

    #@52
    if-nez v28, :cond_3

    #@54
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    #@57
    .line 187
    return-void

    #@58
    .line 188
    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    #@5b
    move-result-wide v16

    #@5c
    .line 189
    .local v16, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5f
    move-result-wide v12

    #@60
    .line 191
    .local v12, "lastTrim":J
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@64
    move/from16 v28, v0

    #@66
    move/from16 v0, v28

    #@68
    new-array v4, v0, [B

    #@6a
    .line 192
    .local v4, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    #@6d
    move-result-object v10

    #@6e
    .line 197
    .local v10, "input":Ljava/io/InputStream;
    const/16 v22, 0x0

    #@70
    .line 198
    .local v22, "read":I
    :goto_3
    array-length v0, v4

    #@71
    move/from16 v28, v0

    #@73
    move/from16 v0, v22

    #@75
    move/from16 v1, v28

    #@77
    if-ge v0, v1, :cond_4

    #@79
    .line 199
    array-length v0, v4

    #@7a
    move/from16 v28, v0

    #@7c
    sub-int v28, v28, v22

    #@7e
    move/from16 v0, v22

    #@80
    move/from16 v1, v28

    #@82
    invoke-virtual {v10, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    #@85
    move-result v11

    #@86
    .line 200
    .local v11, "n":I
    if-gtz v11, :cond_b

    #@88
    .line 207
    .end local v11    # "n":I
    :cond_4
    new-instance v25, Ljava/io/File;

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    #@8e
    move-object/from16 v28, v0

    #@90
    new-instance v29, Ljava/lang/StringBuilder;

    #@92
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v30, "drop"

    #@98
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v29

    #@9c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9f
    move-result-object v30

    #@a0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->getId()J

    #@a3
    move-result-wide v30

    #@a4
    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v29

    #@a8
    const-string/jumbo v30, ".tmp"

    #@ab
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v29

    #@af
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v29

    #@b3
    move-object/from16 v0, v25

    #@b5
    move-object/from16 v1, v28

    #@b7
    move-object/from16 v2, v29

    #@b9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bc
    .line 208
    .local v25, "temp":Ljava/io/File;
    :try_start_5
    move-object/from16 v0, p0

    #@be
    iget v5, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    #@c0
    .line 209
    .end local v24    # "temp":Ljava/io/File;
    .local v5, "bufferSize":I
    const/16 v28, 0x1000

    #@c2
    move/from16 v0, v28

    #@c4
    if-le v5, v0, :cond_5

    #@c6
    const/16 v5, 0x1000

    #@c8
    .line 210
    :cond_5
    const/16 v28, 0x200

    #@ca
    move/from16 v0, v28

    #@cc
    if-ge v5, v0, :cond_6

    #@ce
    const/16 v5, 0x200

    #@d0
    .line 211
    :cond_6
    new-instance v9, Ljava/io/FileOutputStream;

    #@d2
    move-object/from16 v0, v25

    #@d4
    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@d7
    .line 212
    .local v9, "foutput":Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    #@d9
    move-object/from16 v0, v21

    #@db
    invoke-direct {v0, v9, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@de
    .line 213
    .local v21, "output":Ljava/io/OutputStream;
    :try_start_6
    array-length v0, v4

    #@df
    move/from16 v28, v0

    #@e1
    .end local v20    # "output":Ljava/io/OutputStream;
    move/from16 v0, v22

    #@e3
    move/from16 v1, v28

    #@e5
    if-ne v0, v1, :cond_c

    #@e7
    and-int/lit8 v28, v8, 0x4

    #@e9
    if-nez v28, :cond_c

    #@eb
    .line 214
    new-instance v20, Ljava/util/zip/GZIPOutputStream;

    #@ed
    invoke-direct/range {v20 .. v21}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@f0
    .line 215
    .end local v21    # "output":Ljava/io/OutputStream;
    .local v20, "output":Ljava/io/OutputStream;
    or-int/lit8 v8, v8, 0x4

    #@f2
    .line 219
    .end local v20    # "output":Ljava/io/OutputStream;
    :cond_7
    :goto_4
    const/16 v28, 0x0

    #@f4
    :try_start_7
    move-object/from16 v0, v20

    #@f6
    move/from16 v1, v28

    #@f8
    move/from16 v2, v22

    #@fa
    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    #@fd
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@100
    move-result-wide v18

    #@101
    .line 222
    .local v18, "now":J
    sub-long v28, v18, v12

    #@103
    const-wide/16 v30, 0x7530

    #@105
    cmp-long v28, v28, v30

    #@107
    if-lez v28, :cond_8

    #@109
    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    #@10c
    move-result-wide v16

    #@10d
    .line 224
    move-wide/from16 v12, v18

    #@10f
    .line 227
    :cond_8
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    #@112
    move-result v22

    #@113
    .line 228
    if-gtz v22, :cond_d

    #@115
    .line 229
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@118
    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    #@11b
    .line 231
    const/16 v20, 0x0

    #@11d
    .line 236
    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    #@120
    move-result-wide v14

    #@121
    .line 237
    .local v14, "len":J
    cmp-long v28, v14, v16

    #@123
    if-lez v28, :cond_e

    #@125
    .line 238
    const-string/jumbo v28, "DropBoxManagerService"

    #@128
    new-instance v29, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v30, "Dropping: "

    #@130
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v29

    #@134
    move-object/from16 v0, v29

    #@136
    move-object/from16 v1, v23

    #@138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v29

    #@13c
    const-string/jumbo v30, " ("

    #@13f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v29

    #@143
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    #@146
    move-result-wide v30

    #@147
    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v29

    #@14b
    const-string/jumbo v30, " > "

    #@14e
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v29

    #@152
    move-object/from16 v0, v29

    #@154
    move-wide/from16 v1, v16

    #@156
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@159
    move-result-object v29

    #@15a
    const-string/jumbo v30, " bytes)"

    #@15d
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v29

    #@161
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v29

    #@165
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@168
    .line 239
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@16b
    .line 240
    const/16 v24, 0x0

    #@16d
    .line 245
    .end local v25    # "temp":Ljava/io/File;
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    #@16f
    move-object/from16 v1, v24

    #@171
    move-object/from16 v2, v23

    #@173
    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    #@176
    move-result-wide v26

    #@177
    .line 246
    .local v26, "time":J
    const/16 v24, 0x0

    #@179
    .line 248
    .restart local v24    # "temp":Ljava/io/File;
    new-instance v6, Landroid/content/Intent;

    #@17b
    const-string/jumbo v28, "android.intent.action.DROPBOX_ENTRY_ADDED"

    #@17e
    move-object/from16 v0, v28

    #@180
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@183
    .line 249
    .local v6, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v28, "tag"

    #@186
    move-object/from16 v0, v28

    #@188
    move-object/from16 v1, v23

    #@18a
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@18d
    .line 250
    const-string/jumbo v28, "time"

    #@190
    move-object/from16 v0, v28

    #@192
    move-wide/from16 v1, v26

    #@194
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@197
    .line 251
    move-object/from16 v0, p0

    #@199
    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    #@19b
    move/from16 v28, v0

    #@19d
    if-nez v28, :cond_9

    #@19f
    .line 252
    const/high16 v28, 0x40000000    # 2.0f

    #@1a1
    move/from16 v0, v28

    #@1a3
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1a6
    .line 258
    :cond_9
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    #@1aa
    move-object/from16 v28, v0

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    #@1b0
    move-object/from16 v29, v0

    #@1b2
    const/16 v30, 0x1

    #@1b4
    move-object/from16 v0, v29

    #@1b6
    move/from16 v1, v30

    #@1b8
    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1bb
    move-result-object v29

    #@1bc
    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1bf
    .line 262
    if-eqz v20, :cond_a

    #@1c1
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    #@1c4
    .line 263
    :cond_a
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    #@1c7
    goto/16 :goto_2

    #@1c9
    .line 201
    .end local v5    # "bufferSize":I
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v14    # "len":J
    .end local v18    # "now":J
    .end local v26    # "time":J
    .restart local v11    # "n":I
    .local v20, "output":Ljava/io/OutputStream;
    :cond_b
    add-int v22, v22, v11

    #@1cb
    goto/16 :goto_3

    #@1cd
    .end local v11    # "n":I
    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v24    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v21    # "output":Ljava/io/OutputStream;
    .restart local v25    # "temp":Ljava/io/File;
    :cond_c
    move-object/from16 v20, v21

    #@1cf
    .line 213
    .end local v21    # "output":Ljava/io/OutputStream;
    .local v20, "output":Ljava/io/OutputStream;
    goto/16 :goto_4

    #@1d1
    .line 233
    .end local v20    # "output":Ljava/io/OutputStream;
    .restart local v18    # "now":J
    :cond_d
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1d4
    goto/16 :goto_5

    #@1d6
    .line 259
    .end local v5    # "bufferSize":I
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v18    # "now":J
    :catch_1
    move-exception v7

    #@1d7
    .restart local v7    # "e":Ljava/io/IOException;
    move-object/from16 v24, v25

    #@1d9
    .end local v25    # "temp":Ljava/io/File;
    .local v24, "temp":Ljava/io/File;
    goto/16 :goto_0

    #@1db
    .line 243
    .end local v7    # "e":Ljava/io/IOException;
    .end local v24    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v14    # "len":J
    .restart local v18    # "now":J
    .restart local v25    # "temp":Ljava/io/File;
    :cond_e
    if-gtz v22, :cond_7

    #@1dd
    move-object/from16 v24, v25

    #@1df
    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto :goto_6

    #@1e0
    .line 262
    .restart local v6    # "dropboxIntent":Landroid/content/Intent;
    .local v24, "temp":Ljava/io/File;
    .restart local v26    # "time":J
    :catch_2
    move-exception v7

    #@1e1
    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_7

    #@1e2
    .end local v4    # "buffer":[B
    .end local v5    # "bufferSize":I
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .end local v8    # "flags":I
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "lastTrim":J
    .end local v14    # "len":J
    .end local v16    # "max":J
    .end local v18    # "now":J
    .end local v22    # "read":I
    .end local v24    # "temp":Ljava/io/File;
    .end local v26    # "time":J
    :catch_3
    move-exception v7

    #@1e3
    goto/16 :goto_1

    #@1e5
    .line 261
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    #@1e6
    .line 262
    :goto_8
    if-eqz v20, :cond_f

    #@1e8
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    #@1eb
    .line 263
    :cond_f
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    #@1ee
    .line 264
    if-eqz v24, :cond_10

    #@1f0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    #@1f3
    .line 261
    :cond_10
    throw v28

    #@1f4
    .line 262
    :catch_4
    move-exception v7

    #@1f5
    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_9

    #@1f6
    .line 261
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v8    # "flags":I
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v12    # "lastTrim":J
    .restart local v16    # "max":J
    .restart local v22    # "read":I
    .restart local v25    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v28

    #@1f7
    move-object/from16 v24, v25

    #@1f9
    .end local v25    # "temp":Ljava/io/File;
    .local v24, "temp":Ljava/io/File;
    goto :goto_8

    #@1fa
    .end local v24    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v21    # "output":Ljava/io/OutputStream;
    .restart local v25    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v28

    #@1fb
    move-object/from16 v20, v21

    #@1fd
    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    move-object/from16 v24, v25

    #@1ff
    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto :goto_8

    #@200
    .line 259
    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v24    # "temp":Ljava/io/File;
    .restart local v21    # "output":Ljava/io/OutputStream;
    .restart local v25    # "temp":Ljava/io/File;
    :catch_5
    move-exception v7

    #@201
    .restart local v7    # "e":Ljava/io/IOException;
    move-object/from16 v20, v21

    #@203
    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    move-object/from16 v24, v25

    #@205
    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 312
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v4, "android.permission.DUMP"

    #@8
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 314
    const-string/jumbo v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    #@11
    move-object/from16 v0, p2

    #@13
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 315
    return-void

    #@18
    .line 319
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 328
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    .line 329
    .local v27, "out":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    #@21
    .local v15, "doPrint":Z
    const/4 v14, 0x0

    #@22
    .line 330
    .local v14, "doFile":Z
    new-instance v28, Ljava/util/ArrayList;

    #@24
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 331
    .local v28, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    #@29
    .local v19, "i":I
    :goto_0
    if-eqz p3, :cond_6

    #@2b
    move-object/from16 v0, p3

    #@2d
    array-length v3, v0

    #@2e
    move/from16 v0, v19

    #@30
    if-ge v0, v3, :cond_6

    #@32
    .line 332
    aget-object v3, p3, v19

    #@34
    const-string/jumbo v4, "-p"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_1

    #@3d
    aget-object v3, p3, v19

    #@3f
    const-string/jumbo v4, "--print"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 333
    :cond_1
    const/4 v15, 0x1

    #@49
    .line 331
    :goto_1
    add-int/lit8 v19, v19, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 320
    .end local v14    # "doFile":Z
    .end local v15    # "doPrint":Z
    .end local v19    # "i":I
    .end local v27    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    #@4d
    .line 321
    .local v16, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "Can\'t initialize: "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    move-object/from16 v0, v16

    #@5b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68
    .line 322
    const-string/jumbo v3, "DropBoxManagerService"

    #@6b
    const-string/jumbo v4, "Can\'t init"

    #@6e
    move-object/from16 v0, v16

    #@70
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    monitor-exit p0

    #@74
    .line 323
    return-void

    #@75
    .line 334
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v14    # "doFile":Z
    .restart local v15    # "doPrint":Z
    .restart local v19    # "i":I
    .restart local v27    # "out":Ljava/lang/StringBuilder;
    .restart local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v19

    #@77
    const-string/jumbo v4, "-f"

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v3

    #@7e
    if-nez v3, :cond_3

    #@80
    aget-object v3, p3, v19

    #@82
    const-string/jumbo v4, "--file"

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_4

    #@8b
    .line 335
    :cond_3
    const/4 v14, 0x1

    #@8c
    goto :goto_1

    #@8d
    .line 336
    :cond_4
    aget-object v3, p3, v19

    #@8f
    const-string/jumbo v4, "-"

    #@92
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@95
    move-result v3

    #@96
    if-eqz v3, :cond_5

    #@98
    .line 337
    const-string/jumbo v3, "Unknown argument: "

    #@9b
    move-object/from16 v0, v27

    #@9d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v3

    #@a1
    aget-object v4, p3, v19

    #@a3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    const-string/jumbo v4, "\n"

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ad
    goto :goto_1

    #@ae
    .end local v14    # "doFile":Z
    .end local v15    # "doPrint":Z
    .end local v19    # "i":I
    .end local v27    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@af
    monitor-exit p0

    #@b0
    throw v3

    #@b1
    .line 339
    .restart local v14    # "doFile":Z
    .restart local v15    # "doPrint":Z
    .restart local v19    # "i":I
    .restart local v27    # "out":Ljava/lang/StringBuilder;
    .restart local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_4
    aget-object v3, p3, v19

    #@b3
    move-object/from16 v0, v28

    #@b5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b8
    goto :goto_1

    #@b9
    .line 343
    :cond_6
    const-string/jumbo v3, "Drop box contents: "

    #@bc
    move-object/from16 v0, v27

    #@be
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@c6
    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@c8
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    #@cb
    move-result v4

    #@cc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v3

    #@d0
    const-string/jumbo v4, " entries\n"

    #@d3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    .line 345
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    #@d9
    move-result v3

    #@da
    if-nez v3, :cond_8

    #@dc
    .line 346
    const-string/jumbo v3, "Searching for:"

    #@df
    move-object/from16 v0, v27

    #@e1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    .line 347
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e7
    move-result-object v9

    #@e8
    .local v9, "a$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@eb
    move-result v3

    #@ec
    if-eqz v3, :cond_7

    #@ee
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f1
    move-result-object v8

    #@f2
    check-cast v8, Ljava/lang/String;

    #@f4
    .local v8, "a":Ljava/lang/String;
    const-string/jumbo v3, " "

    #@f7
    move-object/from16 v0, v27

    #@f9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v3

    #@fd
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    goto :goto_2

    #@101
    .line 348
    .end local v8    # "a":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "\n"

    #@104
    move-object/from16 v0, v27

    #@106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    .line 351
    .end local v9    # "a$iterator":Ljava/util/Iterator;
    :cond_8
    const/16 v26, 0x0

    #@10b
    .local v26, "numFound":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@10e
    move-result v25

    #@10f
    .line 352
    .local v25, "numArgs":I
    new-instance v30, Landroid/text/format/Time;

    #@111
    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    #@114
    .line 353
    .local v30, "time":Landroid/text/format/Time;
    const-string/jumbo v3, "\n"

    #@117
    move-object/from16 v0, v27

    #@119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    .line 354
    move-object/from16 v0, p0

    #@11e
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    #@120
    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@122
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@125
    move-result-object v18

    #@126
    .local v18, "entry$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@129
    move-result v3

    #@12a
    if-eqz v3, :cond_22

    #@12c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12f
    move-result-object v17

    #@130
    check-cast v17, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@132
    .line 355
    .local v17, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v17

    #@134
    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@136
    move-object/from16 v0, v30

    #@138
    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    #@13b
    .line 356
    const-string/jumbo v3, "%Y-%m-%d %H:%M:%S"

    #@13e
    move-object/from16 v0, v30

    #@140
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@143
    move-result-object v12

    #@144
    .line 357
    .local v12, "date":Ljava/lang/String;
    const/16 v22, 0x1

    #@146
    .line 358
    .local v22, "match":Z
    const/16 v19, 0x0

    #@148
    .end local v22    # "match":Z
    :goto_4
    move/from16 v0, v19

    #@14a
    move/from16 v1, v25

    #@14c
    if-ge v0, v1, :cond_b

    #@14e
    if-eqz v22, :cond_b

    #@150
    .line 359
    move-object/from16 v0, v28

    #@152
    move/from16 v1, v19

    #@154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@157
    move-result-object v10

    #@158
    check-cast v10, Ljava/lang/String;

    #@15a
    .line 360
    .local v10, "arg":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@15d
    move-result v3

    #@15e
    if-nez v3, :cond_a

    #@160
    move-object/from16 v0, v17

    #@162
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@164
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v22

    #@168
    .line 358
    :goto_5
    add-int/lit8 v19, v19, 0x1

    #@16a
    goto :goto_4

    #@16b
    .line 360
    :cond_a
    const/16 v22, 0x1

    #@16d
    .restart local v22    # "match":Z
    goto :goto_5

    #@16e
    .line 362
    .end local v10    # "arg":Ljava/lang/String;
    .end local v22    # "match":Z
    :cond_b
    if-eqz v22, :cond_9

    #@170
    .line 364
    add-int/lit8 v26, v26, 0x1

    #@172
    .line 365
    if-eqz v15, :cond_c

    #@174
    const-string/jumbo v3, "========================================\n"

    #@177
    move-object/from16 v0, v27

    #@179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    .line 366
    :cond_c
    move-object/from16 v0, v27

    #@17e
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v3

    #@182
    const-string/jumbo v4, " "

    #@185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v4

    #@189
    move-object/from16 v0, v17

    #@18b
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@18d
    if-nez v3, :cond_d

    #@18f
    const-string/jumbo v3, "(no tag)"

    #@192
    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    .line 367
    move-object/from16 v0, v17

    #@197
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@199
    if-nez v3, :cond_e

    #@19b
    .line 368
    const-string/jumbo v3, " (no file)\n"

    #@19e
    move-object/from16 v0, v27

    #@1a0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    goto :goto_3

    #@1a4
    .line 366
    :cond_d
    move-object/from16 v0, v17

    #@1a6
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@1a8
    goto :goto_6

    #@1a9
    .line 370
    :cond_e
    move-object/from16 v0, v17

    #@1ab
    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@1ad
    and-int/lit8 v3, v3, 0x1

    #@1af
    if-eqz v3, :cond_f

    #@1b1
    .line 371
    const-string/jumbo v3, " (contents lost)\n"

    #@1b4
    move-object/from16 v0, v27

    #@1b6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    goto/16 :goto_3

    #@1bb
    .line 374
    :cond_f
    const-string/jumbo v3, " ("

    #@1be
    move-object/from16 v0, v27

    #@1c0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    .line 375
    move-object/from16 v0, v17

    #@1c5
    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@1c7
    and-int/lit8 v3, v3, 0x4

    #@1c9
    if-eqz v3, :cond_10

    #@1cb
    const-string/jumbo v3, "compressed "

    #@1ce
    move-object/from16 v0, v27

    #@1d0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    .line 376
    :cond_10
    move-object/from16 v0, v17

    #@1d5
    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@1d7
    and-int/lit8 v3, v3, 0x2

    #@1d9
    if-eqz v3, :cond_15

    #@1db
    const-string/jumbo v3, "text"

    #@1de
    :goto_7
    move-object/from16 v0, v27

    #@1e0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    .line 377
    const-string/jumbo v3, ", "

    #@1e6
    move-object/from16 v0, v27

    #@1e8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v3

    #@1ec
    move-object/from16 v0, v17

    #@1ee
    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@1f0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@1f3
    move-result-wide v4

    #@1f4
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v3

    #@1f8
    const-string/jumbo v4, " bytes)\n"

    #@1fb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    .line 380
    if-nez v14, :cond_11

    #@200
    if-eqz v15, :cond_13

    #@202
    move-object/from16 v0, v17

    #@204
    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@206
    and-int/lit8 v3, v3, 0x2

    #@208
    if-nez v3, :cond_13

    #@20a
    .line 381
    :cond_11
    if-nez v15, :cond_12

    #@20c
    const-string/jumbo v3, "    "

    #@20f
    move-object/from16 v0, v27

    #@211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    .line 382
    :cond_12
    move-object/from16 v0, v17

    #@216
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@218
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@21b
    move-result-object v3

    #@21c
    move-object/from16 v0, v27

    #@21e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v3

    #@222
    const-string/jumbo v4, "\n"

    #@225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    .line 385
    :cond_13
    move-object/from16 v0, v17

    #@22a
    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@22c
    and-int/lit8 v3, v3, 0x2

    #@22e
    if-eqz v3, :cond_14

    #@230
    if-nez v15, :cond_16

    #@232
    if-eqz v14, :cond_16

    #@234
    .line 435
    :cond_14
    :goto_8
    if-eqz v15, :cond_9

    #@236
    const-string/jumbo v3, "\n"

    #@239
    move-object/from16 v0, v27

    #@23b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    goto/16 :goto_3

    #@240
    .line 376
    :cond_15
    const-string/jumbo v3, "data"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@243
    goto :goto_7

    #@244
    .line 386
    :cond_16
    const/4 v13, 0x0

    #@245
    .line 387
    .local v13, "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v20, 0x0

    #@247
    .line 389
    .local v20, "isr":Ljava/io/InputStreamReader;
    :try_start_5
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    #@249
    .line 390
    move-object/from16 v0, v17

    #@24b
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@24d
    move-object/from16 v0, v17

    #@24f
    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@251
    move-object/from16 v0, v17

    #@253
    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@255
    move-object/from16 v0, v17

    #@257
    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@259
    .line 389
    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@25c
    .line 392
    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v2, "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v15, :cond_1c

    #@25e
    .line 393
    :try_start_6
    new-instance v21, Ljava/io/InputStreamReader;

    #@260
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    #@263
    move-result-object v3

    #@264
    move-object/from16 v0, v21

    #@266
    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@269
    .line 394
    .local v21, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    #@26b
    :try_start_7
    new-array v11, v3, [C

    #@26d
    .line 395
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .local v11, "buf":[C
    const/16 v24, 0x0

    #@26f
    .line 397
    .local v24, "newline":Z
    :cond_17
    :goto_9
    move-object/from16 v0, v21

    #@271
    invoke-virtual {v0, v11}, Ljava/io/InputStreamReader;->read([C)I

    #@274
    move-result v23

    #@275
    .line 398
    .local v23, "n":I
    if-gtz v23, :cond_19

    #@277
    .line 408
    if-nez v24, :cond_27

    #@279
    const-string/jumbo v3, "\n"

    #@27c
    move-object/from16 v0, v27

    #@27e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@281
    move-object/from16 v20, v21

    #@283
    .line 425
    .end local v11    # "buf":[C
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    :goto_a
    if-eqz v2, :cond_18

    #@285
    :try_start_8
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@288
    .line 426
    :cond_18
    if-eqz v20, :cond_14

    #@28a
    .line 428
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@28d
    goto :goto_8

    #@28e
    .line 429
    :catch_1
    move-exception v32

    #@28f
    .local v32, "unused":Ljava/io/IOException;
    goto :goto_8

    #@290
    .line 399
    .end local v32    # "unused":Ljava/io/IOException;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_19
    const/4 v3, 0x0

    #@291
    :try_start_a
    move-object/from16 v0, v27

    #@293
    move/from16 v1, v23

    #@295
    invoke-virtual {v0, v11, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@298
    .line 400
    add-int/lit8 v3, v23, -0x1

    #@29a
    aget-char v3, v11, v3

    #@29c
    const/16 v4, 0xa

    #@29e
    if-ne v3, v4, :cond_1b

    #@2a0
    const/16 v24, 0x1

    #@2a2
    .line 403
    :goto_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    #@2a5
    move-result v3

    #@2a6
    const/high16 v4, 0x10000

    #@2a8
    if-le v3, v4, :cond_17

    #@2aa
    .line 404
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ad
    move-result-object v3

    #@2ae
    move-object/from16 v0, p2

    #@2b0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@2b3
    .line 405
    const/4 v3, 0x0

    #@2b4
    move-object/from16 v0, v27

    #@2b6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@2b9
    goto :goto_9

    #@2ba
    .line 421
    .end local v11    # "buf":[C
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    :catch_2
    move-exception v16

    #@2bb
    .restart local v16    # "e":Ljava/io/IOException;
    move-object/from16 v20, v21

    #@2bd
    .line 422
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    :goto_c
    :try_start_b
    const-string/jumbo v3, "*** "

    #@2c0
    move-object/from16 v0, v27

    #@2c2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c5
    move-result-object v3

    #@2c6
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@2c9
    move-result-object v4

    #@2ca
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v3

    #@2ce
    const-string/jumbo v4, "\n"

    #@2d1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    .line 423
    const-string/jumbo v3, "DropBoxManagerService"

    #@2d7
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2dc
    const-string/jumbo v5, "Can\'t read: "

    #@2df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v4

    #@2e3
    move-object/from16 v0, v17

    #@2e5
    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@2e7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ea
    move-result-object v4

    #@2eb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ee
    move-result-object v4

    #@2ef
    move-object/from16 v0, v16

    #@2f1
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@2f4
    .line 425
    if-eqz v2, :cond_1a

    #@2f6
    :try_start_c
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2f9
    .line 426
    :cond_1a
    if-eqz v20, :cond_14

    #@2fb
    .line 428
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@2fe
    goto/16 :goto_8

    #@300
    .line 429
    :catch_3
    move-exception v32

    #@301
    .restart local v32    # "unused":Ljava/io/IOException;
    goto/16 :goto_8

    #@303
    .line 400
    .end local v16    # "e":Ljava/io/IOException;
    .end local v32    # "unused":Ljava/io/IOException;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_1b
    const/16 v24, 0x0

    #@305
    goto :goto_b

    #@306
    .line 410
    .end local v11    # "buf":[C
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :cond_1c
    const/16 v3, 0x46

    #@308
    :try_start_e
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    #@30b
    move-result-object v29

    #@30c
    .line 411
    .local v29, "text":Ljava/lang/String;
    const-string/jumbo v3, "    "

    #@30f
    move-object/from16 v0, v27

    #@311
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    .line 412
    if-nez v29, :cond_1e

    #@316
    .line 413
    const-string/jumbo v3, "[null]"

    #@319
    move-object/from16 v0, v27

    #@31b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    .line 419
    :cond_1d
    :goto_d
    const-string/jumbo v3, "\n"

    #@321
    move-object/from16 v0, v27

    #@323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    goto/16 :goto_a

    #@328
    .line 421
    .end local v29    # "text":Ljava/lang/String;
    :catch_4
    move-exception v16

    #@329
    .restart local v16    # "e":Ljava/io/IOException;
    goto :goto_c

    #@32a
    .line 415
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v29    # "text":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@32d
    move-result v3

    #@32e
    const/16 v4, 0x46

    #@330
    if-ne v3, v4, :cond_21

    #@332
    const/16 v31, 0x1

    #@334
    .line 416
    .local v31, "truncated":Z
    :goto_e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@337
    move-result-object v3

    #@338
    const/16 v4, 0xa

    #@33a
    const/16 v5, 0x2f

    #@33c
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@33f
    move-result-object v3

    #@340
    move-object/from16 v0, v27

    #@342
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    .line 417
    if-eqz v31, :cond_1d

    #@347
    const-string/jumbo v3, " ..."

    #@34a
    move-object/from16 v0, v27

    #@34c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@34f
    goto :goto_d

    #@350
    .line 424
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "text":Ljava/lang/String;
    .end local v31    # "truncated":Z
    :catchall_1
    move-exception v3

    #@351
    .line 425
    :goto_f
    if-eqz v2, :cond_1f

    #@353
    :try_start_f
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@356
    .line 426
    :cond_1f
    if-eqz v20, :cond_20

    #@358
    .line 428
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@35b
    .line 424
    :cond_20
    :goto_10
    :try_start_11
    throw v3

    #@35c
    .line 415
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v29    # "text":Ljava/lang/String;
    :cond_21
    const/16 v31, 0x0

    #@35e
    .restart local v31    # "truncated":Z
    goto :goto_e

    #@35f
    .line 429
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "text":Ljava/lang/String;
    .end local v31    # "truncated":Z
    :catch_5
    move-exception v32

    #@360
    .restart local v32    # "unused":Ljava/io/IOException;
    goto :goto_10

    #@361
    .line 438
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v12    # "date":Ljava/lang/String;
    .end local v17    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v32    # "unused":Ljava/io/IOException;
    :cond_22
    if-nez v26, :cond_23

    #@363
    const-string/jumbo v3, "(No entries found.)\n"

    #@366
    move-object/from16 v0, v27

    #@368
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36b
    .line 440
    :cond_23
    if-eqz p3, :cond_24

    #@36d
    move-object/from16 v0, p3

    #@36f
    array-length v3, v0

    #@370
    if-nez v3, :cond_26

    #@372
    .line 441
    :cond_24
    if-nez v15, :cond_25

    #@374
    const-string/jumbo v3, "\n"

    #@377
    move-object/from16 v0, v27

    #@379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37c
    .line 442
    :cond_25
    const-string/jumbo v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    #@37f
    move-object/from16 v0, v27

    #@381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@384
    .line 445
    :cond_26
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@387
    move-result-object v3

    #@388
    move-object/from16 v0, p2

    #@38a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@38d
    monitor-exit p0

    #@38e
    .line 311
    return-void

    #@38f
    .line 424
    .restart local v12    # "date":Ljava/lang/String;
    .restart local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v17    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v3

    #@390
    move-object v2, v13

    #@391
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_f

    #@392
    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    #@393
    move-object/from16 v20, v21

    #@395
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    goto :goto_f

    #@396
    .line 421
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v20, "isr":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v16

    #@397
    .restart local v16    # "e":Ljava/io/IOException;
    move-object v2, v13

    #@398
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_c

    #@39a
    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_27
    move-object/from16 v20, v21

    #@39c
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_a
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v1, "android.permission.READ_LOGS"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 281
    new-instance v0, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v1, "READ_LOGS permission required"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0

    #@19
    .line 285
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 291
    if-nez p1, :cond_1

    #@1e
    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 292
    .local v9, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    #@22
    monitor-exit p0

    #@23
    return-object v10

    #@24
    .line 286
    .end local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_0
    move-exception v6

    #@25
    .line 287
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v0, "DropBoxManagerService"

    #@28
    const-string/jumbo v1, "Can\'t init"

    #@2b
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 288
    return-object v10

    #@30
    .line 291
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    #@32
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v9

    #@36
    check-cast v9, Lcom/android/server/DropBoxManagerService$FileList;

    #@38
    .restart local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_0

    #@39
    .line 294
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@3b
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@3d
    const-wide/16 v2, 0x1

    #@3f
    add-long/2addr v2, p2

    #@40
    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    #@43
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@46
    move-result-object v0

    #@47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v8

    #@4b
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_5

    #@51
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v7

    #@55
    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@57
    .line 295
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@59
    if-eqz v0, :cond_3

    #@5b
    .line 296
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@5d
    and-int/lit8 v0, v0, 0x1

    #@5f
    if-eqz v0, :cond_4

    #@61
    .line 297
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@63
    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@65
    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@67
    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6a
    monitor-exit p0

    #@6b
    return-object v0

    #@6c
    .line 300
    :cond_4
    :try_start_5
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@6e
    .line 301
    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@70
    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@72
    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@74
    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@76
    .line 300
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@79
    monitor-exit p0

    #@7a
    return-object v0

    #@7b
    .line 302
    :catch_1
    move-exception v6

    #@7c
    .line 303
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v0, "DropBoxManagerService"

    #@7f
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v2, "Can\'t read: "

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@98
    goto :goto_1

    #@99
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    monitor-exit p0

    #@9a
    .line 308
    return-object v10
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 271
    .local v0, "token":J
    :try_start_0
    const-string/jumbo v2, "disabled"

    #@7
    .line 272
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "dropbox:"

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 271
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    const/4 v2, 0x0

    #@28
    .line 274
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 271
    return v2

    #@2c
    :cond_0
    const/4 v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 273
    :catchall_0
    move-exception v2

    #@2f
    .line 274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 273
    throw v2
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@7
    .line 173
    return-void
.end method

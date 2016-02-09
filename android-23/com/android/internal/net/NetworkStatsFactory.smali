.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStackedIfaces"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/proc/"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    #@b
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "procRoot"    # Ljava/io/File;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    new-instance v0, Ljava/io/File;

    #@5
    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    #@8
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    #@d
    .line 80
    new-instance v0, Ljava/io/File;

    #@f
    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_fmt"

    #@12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    #@17
    .line 81
    new-instance v0, Ljava/io/File;

    #@19
    const-string/jumbo v1, "net/xt_qtaguid/stats"

    #@1c
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    #@21
    .line 78
    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 12
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v7

    #@4
    .line 271
    .local v7, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v8, Landroid/net/NetworkStats;

    #@6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v10

    #@a
    const/16 v9, 0x18

    #@c
    invoke-direct {v8, v10, v11, v9}, Landroid/net/NetworkStats;-><init>(JI)V

    #@f
    .line 272
    .local v8, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    #@11
    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@14
    .line 274
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x1

    #@15
    .line 275
    .local v3, "idx":I
    const/4 v4, 0x1

    #@16
    .line 277
    .local v4, "lastIdx":I
    const/4 v5, 0x0

    #@17
    .line 280
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v6, Lcom/android/internal/util/ProcFileReader;

    #@19
    new-instance v9, Ljava/io/FileInputStream;

    #@1b
    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@1e
    invoke-direct {v6, v9}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 281
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v6, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    #@24
    .line 283
    :goto_0
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_5

    #@2a
    .line 284
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    #@2d
    move-result v3

    #@2e
    .line 285
    add-int/lit8 v9, v4, 0x1

    #@30
    if-eq v3, v9, :cond_0

    #@32
    .line 286
    new-instance v9, Ljava/net/ProtocolException;

    #@34
    .line 287
    new-instance v10, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v11, "inconsistent idx="

    #@3c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    const-string/jumbo v11, " after lastIdx="

    #@47
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    .line 286
    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@56
    throw v9
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    .line 308
    :catch_0
    move-exception v0

    #@58
    .local v0, "e":Ljava/lang/NullPointerException;
    move-object v5, v6

    #@59
    .line 309
    .end local v6    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v9, Ljava/net/ProtocolException;

    #@5b
    new-instance v10, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v11, "problem parsing idx "

    #@63
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    invoke-direct {v9, v10, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@72
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    .line 312
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v9

    #@74
    .line 313
    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@77
    .line 314
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@7a
    .line 312
    throw v9

    #@7b
    .line 289
    .restart local v6    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_0
    move v4, v3

    #@7c
    .line 291
    :try_start_3
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    iput-object v9, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@82
    .line 292
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-static {v9}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    #@89
    move-result v9

    #@8a
    iput v9, v2, Landroid/net/NetworkStats$Entry;->tag:I

    #@8c
    .line 293
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    #@8f
    move-result v9

    #@90
    iput v9, v2, Landroid/net/NetworkStats$Entry;->uid:I

    #@92
    .line 294
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    #@95
    move-result v9

    #@96
    iput v9, v2, Landroid/net/NetworkStats$Entry;->set:I

    #@98
    .line 295
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@9b
    move-result-wide v10

    #@9c
    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@9e
    .line 296
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@a1
    move-result-wide v10

    #@a2
    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@a4
    .line 297
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@a7
    move-result-wide v10

    #@a8
    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@aa
    .line 298
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@ad
    move-result-wide v10

    #@ae
    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@b0
    .line 300
    if-eqz p2, :cond_1

    #@b2
    iget-object v9, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@b4
    invoke-static {p2, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b7
    move-result v9

    #@b8
    if-eqz v9, :cond_4

    #@ba
    .line 301
    :cond_1
    const/4 v9, -0x1

    #@bb
    if-eq p1, v9, :cond_2

    #@bd
    iget v9, v2, Landroid/net/NetworkStats$Entry;->uid:I

    #@bf
    if-ne p1, v9, :cond_4

    #@c1
    .line 302
    :cond_2
    const/4 v9, -0x1

    #@c2
    if-eq p3, v9, :cond_3

    #@c4
    iget v9, v2, Landroid/net/NetworkStats$Entry;->tag:I

    #@c6
    if-ne p3, v9, :cond_4

    #@c8
    .line 303
    :cond_3
    invoke-virtual {v8, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@cb
    .line 306
    :cond_4
    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ce
    goto/16 :goto_0

    #@d0
    .line 310
    :catch_1
    move-exception v1

    #@d1
    .local v1, "e":Ljava/lang/NumberFormatException;
    move-object v5, v6

    #@d2
    .line 311
    .end local v6    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_3
    :try_start_4
    new-instance v9, Ljava/net/ProtocolException;

    #@d4
    new-instance v10, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v11, "problem parsing idx "

    #@dc
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v10

    #@e4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v10

    #@e8
    invoke-direct {v9, v10, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@eb
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ec
    .line 313
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ef
    .line 314
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@f2
    .line 317
    return-object v8

    #@f3
    .line 312
    :catchall_1
    move-exception v9

    #@f4
    move-object v5, v6

    #@f5
    .end local v6    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    goto/16 :goto_2

    #@f7
    .line 308
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v0

    #@f8
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_1

    #@fa
    .line 310
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    #@fb
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "stackedIface"    # Ljava/lang/String;
    .param p1, "baseIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    sget-object v1, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 65
    if-eqz p1, :cond_0

    #@5
    .line 66
    :try_start_0
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :goto_0
    monitor-exit v1

    #@b
    .line 63
    return-void

    #@c
    .line 68
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    goto :goto_0

    #@12
    .line 64
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    if-eqz p4, :cond_0

    #@2
    .line 241
    move-object v0, p4

    #@3
    .line 242
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    #@a
    .line 246
    :goto_0
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    #@c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 248
    new-instance v1, Ljava/io/IOException;

    #@18
    const-string/jumbo v2, "Failed to parse network stats"

    #@1b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 244
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats;

    #@21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@24
    move-result-wide v2

    #@25
    const/4 v1, -0x1

    #@26
    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    #@29
    .restart local v0    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    #@2a
    .line 255
    :cond_1
    return-object v0
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "expected"    # Landroid/net/NetworkStats;
    .param p2, "actual"    # Landroid/net/NetworkStats;

    #@0
    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    #@3
    move-result v3

    #@4
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    #@7
    move-result v4

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 322
    new-instance v3, Ljava/lang/AssertionError;

    #@c
    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Expected size "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    #@1b
    move-result v5

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, ", actual size "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 322
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@36
    throw v3

    #@37
    .line 326
    :cond_0
    const/4 v1, 0x0

    #@38
    .line 327
    .local v1, "expectedRow":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    #@39
    .line 328
    .local v0, "actualRow":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    #@3a
    .end local v0    # "actualRow":Landroid/net/NetworkStats$Entry;
    .end local v1    # "expectedRow":Landroid/net/NetworkStats$Entry;
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    #@3d
    move-result v3

    #@3e
    if-ge v2, v3, :cond_2

    #@40
    .line 329
    invoke-virtual {p1, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@43
    move-result-object v1

    #@44
    .line 330
    .local v1, "expectedRow":Landroid/net/NetworkStats$Entry;
    invoke-virtual {p2, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@47
    move-result-object v0

    #@48
    .line 331
    .local v0, "actualRow":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_1

    #@4e
    .line 332
    new-instance v3, Ljava/lang/AssertionError;

    #@50
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v5, "Expected row "

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    const-string/jumbo v5, ": "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    const-string/jumbo v5, ", actual row "

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    .line 332
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7d
    throw v3

    #@7e
    .line 328
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@80
    goto :goto_0

    #@81
    .line 320
    .end local v0    # "actualRow":Landroid/net/NetworkStats$Entry;
    .end local v1    # "expectedRow":Landroid/net/NetworkStats$Entry;
    :cond_2
    return-void
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 186
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 24
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    #@3
    move-result-object v22

    #@4
    .line 194
    .local v22, "stats":Landroid/net/NetworkStats;
    sget-object v23, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@6
    monitor-enter v23

    #@7
    .line 197
    :try_start_0
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v20

    #@d
    .line 198
    .local v20, "size":I
    const/16 v18, 0x0

    #@f
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@11
    move/from16 v1, v20

    #@13
    if-ge v0, v1, :cond_2

    #@15
    .line 199
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@17
    move/from16 v0, v18

    #@19
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v21

    #@1d
    check-cast v21, Ljava/lang/String;

    #@1f
    .line 200
    .local v21, "stackedIface":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    #@21
    move/from16 v0, v18

    #@23
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/lang/String;

    #@29
    .line 204
    .local v4, "baseIface":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@2b
    const/4 v5, 0x0

    #@2c
    const/4 v6, 0x0

    #@2d
    const/4 v7, 0x0

    #@2e
    const-wide/16 v8, 0x0

    #@30
    const-wide/16 v10, 0x0

    #@32
    const-wide/16 v12, 0x0

    #@34
    .line 205
    const-wide/16 v14, 0x0

    #@36
    const-wide/16 v16, 0x0

    #@38
    .line 204
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@3b
    .line 206
    .local v3, "adjust":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    #@3c
    .line 207
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v19, 0x0

    #@3e
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .local v19, "j":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    #@41
    move-result v5

    #@42
    move/from16 v0, v19

    #@44
    if-ge v0, v5, :cond_1

    #@46
    .line 208
    move-object/from16 v0, v22

    #@48
    move/from16 v1, v19

    #@4a
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@4d
    move-result-object v2

    #@4e
    .line 209
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@50
    move-object/from16 v0, v21

    #@52
    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_0

    #@58
    .line 210
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5a
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5c
    sub-long/2addr v6, v8

    #@5d
    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5f
    .line 211
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@61
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@63
    sub-long/2addr v6, v8

    #@64
    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@66
    .line 207
    :cond_0
    add-int/lit8 v19, v19, 0x1

    #@68
    goto :goto_1

    #@69
    .line 214
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_1
    move-object/from16 v0, v22

    #@6b
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    .line 198
    add-int/lit8 v18, v18, 0x1

    #@70
    goto :goto_0

    #@71
    .end local v3    # "adjust":Landroid/net/NetworkStats$Entry;
    .end local v4    # "baseIface":Ljava/lang/String;
    .end local v19    # "j":I
    .end local v21    # "stackedIface":Ljava/lang/String;
    :cond_2
    monitor-exit v23

    #@72
    .line 220
    const/4 v2, 0x0

    #@73
    .line 221
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v18, 0x0

    #@75
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    :goto_2
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    #@78
    move-result v5

    #@79
    move/from16 v0, v18

    #@7b
    if-ge v0, v5, :cond_4

    #@7d
    .line 222
    move-object/from16 v0, v22

    #@7f
    move/from16 v1, v18

    #@81
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@84
    move-result-object v2

    #@85
    .line 223
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@87
    if-eqz v5, :cond_3

    #@89
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@8b
    const-string/jumbo v6, "clat"

    #@8e
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_3

    #@94
    .line 225
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@96
    const-wide/16 v8, 0x14

    #@98
    mul-long/2addr v6, v8

    #@99
    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@9b
    .line 226
    const-wide/16 v6, 0x0

    #@9d
    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@9f
    .line 227
    const-wide/16 v6, 0x0

    #@a1
    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@a3
    .line 228
    const-wide/16 v6, 0x0

    #@a5
    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@a7
    .line 229
    move-object/from16 v0, v22

    #@a9
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@ac
    .line 221
    :cond_3
    add-int/lit8 v18, v18, 0x1

    #@ae
    goto :goto_2

    #@af
    .line 194
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v18    # "i":I
    .end local v20    # "size":I
    :catchall_0
    move-exception v5

    #@b0
    monitor-exit v23

    #@b1
    throw v5

    #@b2
    .line 233
    .restart local v18    # "i":I
    .restart local v20    # "size":I
    :cond_4
    return-object v22
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v6

    #@4
    .line 95
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v7, Landroid/net/NetworkStats;

    #@6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v8

    #@a
    const/4 v10, 0x6

    #@b
    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    #@e
    .line 96
    .local v7, "stats":Landroid/net/NetworkStats;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@10
    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@13
    .line 98
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v4, 0x0

    #@14
    .line 100
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    #@16
    new-instance v8, Ljava/io/FileInputStream;

    #@18
    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    #@1a
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@1d
    invoke-direct {v5, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 102
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_2

    #@26
    .line 103
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    iput-object v8, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@2c
    .line 104
    const/4 v8, -0x1

    #@2d
    iput v8, v3, Landroid/net/NetworkStats$Entry;->uid:I

    #@2f
    .line 105
    const/4 v8, -0x1

    #@30
    iput v8, v3, Landroid/net/NetworkStats$Entry;->set:I

    #@32
    .line 106
    const/4 v8, 0x0

    #@33
    iput v8, v3, Landroid/net/NetworkStats$Entry;->tag:I

    #@35
    .line 108
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_1

    #@3b
    const/4 v0, 0x1

    #@3c
    .line 111
    .local v0, "active":Z
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@3f
    move-result-wide v8

    #@40
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@42
    .line 112
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@45
    move-result-wide v8

    #@46
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@48
    .line 113
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@4b
    move-result-wide v8

    #@4c
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@4e
    .line 114
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@51
    move-result-wide v8

    #@52
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@54
    .line 117
    if-eqz v0, :cond_0

    #@56
    .line 118
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@58
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@5b
    move-result-wide v10

    #@5c
    add-long/2addr v8, v10

    #@5d
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@5f
    .line 119
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@61
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@64
    move-result-wide v10

    #@65
    add-long/2addr v8, v10

    #@66
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@68
    .line 120
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@6a
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@6d
    move-result-wide v10

    #@6e
    add-long/2addr v8, v10

    #@6f
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@71
    .line 121
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@73
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@76
    move-result-wide v10

    #@77
    add-long/2addr v8, v10

    #@78
    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@7a
    .line 124
    :cond_0
    invoke-virtual {v7, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@7d
    .line 125
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@80
    goto :goto_0

    #@81
    .line 127
    .end local v0    # "active":Z
    :catch_0
    move-exception v1

    #@82
    .local v1, "e":Ljava/lang/NullPointerException;
    move-object v4, v5

    #@83
    .line 128
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v8, Ljava/net/ProtocolException;

    #@85
    const-string/jumbo v9, "problem parsing stats"

    #@88
    invoke-direct {v8, v9, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8b
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8c
    .line 131
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    #@8d
    .line 132
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@90
    .line 133
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@93
    .line 131
    throw v8

    #@94
    .line 108
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    const/4 v0, 0x0

    #@95
    .restart local v0    # "active":Z
    goto :goto_1

    #@96
    .line 132
    .end local v0    # "active":Z
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@99
    .line 133
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@9c
    .line 135
    return-object v7

    #@9d
    .line 129
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v2

    #@9e
    .line 130
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v2, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v8, Ljava/net/ProtocolException;

    #@a0
    const-string/jumbo v9, "problem parsing stats"

    #@a3
    invoke-direct {v8, v9, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a6
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a7
    .line 131
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v8

    #@a8
    move-object v4, v5

    #@a9
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    #@aa
    .line 127
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v1

    #@ab
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_2

    #@ac
    .line 129
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v2

    #@ad
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    move-object v4, v5

    #@ae
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_4
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v5

    #@4
    .line 149
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    #@6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    #@9
    move-result v7

    #@a
    if-nez v7, :cond_0

    #@c
    const/4 v7, 0x0

    #@d
    return-object v7

    #@e
    .line 151
    :cond_0
    new-instance v6, Landroid/net/NetworkStats;

    #@10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v8

    #@14
    const/4 v7, 0x6

    #@15
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@18
    .line 152
    .local v6, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    #@1a
    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@1d
    .line 154
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    #@1e
    .line 157
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    #@20
    new-instance v7, Ljava/io/FileInputStream;

    #@22
    iget-object v8, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    #@24
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@27
    invoke-direct {v4, v7}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 158
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    #@2d
    .line 160
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_1

    #@33
    .line 161
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    iput-object v7, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@39
    .line 162
    const/4 v7, -0x1

    #@3a
    iput v7, v2, Landroid/net/NetworkStats$Entry;->uid:I

    #@3c
    .line 163
    const/4 v7, -0x1

    #@3d
    iput v7, v2, Landroid/net/NetworkStats$Entry;->set:I

    #@3f
    .line 164
    const/4 v7, 0x0

    #@40
    iput v7, v2, Landroid/net/NetworkStats$Entry;->tag:I

    #@42
    .line 166
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@45
    move-result-wide v8

    #@46
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@48
    .line 167
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@4b
    move-result-wide v8

    #@4c
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@4e
    .line 168
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@51
    move-result-wide v8

    #@52
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@54
    .line 169
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@57
    move-result-wide v8

    #@58
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@5a
    .line 171
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@5d
    .line 172
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@60
    goto :goto_0

    #@61
    .line 174
    :catch_0
    move-exception v0

    #@62
    .local v0, "e":Ljava/lang/NullPointerException;
    move-object v3, v4

    #@63
    .line 175
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/net/ProtocolException;

    #@65
    const-string/jumbo v8, "problem parsing stats"

    #@68
    invoke-direct {v7, v8, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6b
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    .line 178
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    #@6d
    .line 179
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 180
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@73
    .line 178
    throw v7

    #@74
    .line 179
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@77
    .line 180
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@7a
    .line 182
    return-object v6

    #@7b
    .line 176
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v1

    #@7c
    .line 177
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_3
    new-instance v7, Ljava/net/ProtocolException;

    #@7e
    const-string/jumbo v8, "problem parsing stats"

    #@81
    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@84
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    .line 178
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v7

    #@86
    move-object v3, v4

    #@87
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_2

    #@88
    .line 174
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v0

    #@89
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    #@8a
    .line 176
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v1

    #@8b
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    move-object v3, v4

    #@8c
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_3
.end method

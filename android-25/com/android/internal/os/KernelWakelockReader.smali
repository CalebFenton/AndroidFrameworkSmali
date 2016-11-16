.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@3
    .line 35
    const/4 v0, 0x6

    #@4
    new-array v0, v0, [I

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    #@b
    .line 45
    const/4 v0, 0x7

    #@c
    new-array v0, v0, [I

    #@e
    fill-array-data v0, :array_1

    #@11
    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    #@13
    .line 29
    return-void

    #@14
    .line 35
    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    #@24
    .line 45
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    new-array v0, v1, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    #@8
    .line 58
    new-array v0, v1, [J

    #@a
    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    #@c
    .line 29
    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 24
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    #@0
    .prologue
    .line 122
    const/4 v11, 0x0

    #@1
    .local v11, "i":I
    :goto_0
    move/from16 v0, p2

    #@3
    if-ge v11, v0, :cond_0

    #@5
    aget-byte v2, p1, v11

    #@7
    const/16 v5, 0xa

    #@9
    if-eq v2, v5, :cond_0

    #@b
    aget-byte v2, p1, v11

    #@d
    if-eqz v2, :cond_0

    #@f
    add-int/lit8 v11, v11, 0x1

    #@11
    goto :goto_0

    #@12
    .line 123
    :cond_0
    add-int/lit8 v4, v11, 0x1

    #@14
    .local v4, "endIndex":I
    move v3, v4

    #@15
    .line 125
    .local v3, "startIndex":I
    monitor-enter p0

    #@16
    .line 126
    :try_start_0
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    sput v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@1c
    .line 127
    :goto_1
    move/from16 v0, p2

    #@1e
    if-ge v4, v0, :cond_2

    #@20
    .line 128
    move v4, v3

    #@21
    .line 129
    :goto_2
    move/from16 v0, p2

    #@23
    if-ge v4, v0, :cond_1

    #@25
    aget-byte v2, p1, v4

    #@27
    const/16 v5, 0xa

    #@29
    if-eq v2, v5, :cond_1

    #@2b
    aget-byte v2, p1, v4

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 130
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_2

    #@32
    .line 133
    :cond_1
    add-int/lit8 v2, p2, -0x1

    #@34
    if-le v4, v2, :cond_4

    #@36
    .line 188
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v12

    #@3e
    .line 189
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_d

    #@44
    .line 190
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@4a
    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    #@4c
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@4e
    if-eq v2, v5, :cond_3

    #@50
    .line 191
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    goto :goto_3

    #@54
    .line 125
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :catchall_0
    move-exception v2

    #@55
    monitor-exit p0

    #@56
    throw v2

    #@57
    .line 137
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@59
    iget-object v6, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    #@5b
    .line 138
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@5d
    iget-object v7, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    #@5f
    .line 142
    .local v7, "wlData":[J
    move v13, v3

    #@60
    .local v13, "j":I
    :goto_4
    if-ge v13, v4, :cond_6

    #@62
    .line 143
    aget-byte v2, p1, v13

    #@64
    and-int/lit16 v2, v2, 0x80

    #@66
    if-eqz v2, :cond_5

    #@68
    const/16 v2, 0x3f

    #@6a
    aput-byte v2, p1, v13

    #@6c
    .line 142
    :cond_5
    add-int/lit8 v13, v13, 0x1

    #@6e
    goto :goto_4

    #@6f
    .line 146
    :cond_6
    if-eqz p3, :cond_8

    #@71
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    #@73
    .line 148
    :goto_5
    const/4 v8, 0x0

    #@74
    move-object/from16 v2, p1

    #@76
    .line 145
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    #@79
    move-result v16

    #@7a
    .line 150
    .local v16, "parsed":Z
    const/4 v2, 0x0

    #@7b
    aget-object v15, v6, v2

    #@7d
    .line 151
    .local v15, "name":Ljava/lang/String;
    const/4 v2, 0x1

    #@7e
    aget-wide v20, v7, v2

    #@80
    move-wide/from16 v0, v20

    #@82
    long-to-int v9, v0

    #@83
    .line 153
    .local v9, "count":I
    if-eqz p3, :cond_9

    #@85
    .line 155
    const/4 v2, 0x2

    #@86
    aget-wide v20, v7, v2

    #@88
    const-wide/16 v22, 0x3e8

    #@8a
    mul-long v18, v20, v22

    #@8c
    .line 161
    .local v18, "totalTime":J
    :goto_6
    if-eqz v16, :cond_c

    #@8e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@91
    move-result v2

    #@92
    if-lez v2, :cond_c

    #@94
    .line 162
    move-object/from16 v0, p4

    #@96
    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    #@99
    move-result v2

    #@9a
    if-nez v2, :cond_a

    #@9c
    .line 163
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@9e
    .line 164
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@a0
    .line 163
    move-wide/from16 v0, v18

    #@a2
    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    #@a5
    move-object/from16 v0, p4

    #@a7
    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 184
    :cond_7
    :goto_7
    add-int/lit8 v3, v4, 0x1

    #@ac
    goto/16 :goto_1

    #@ae
    .line 147
    .end local v9    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_8
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    #@b0
    goto :goto_5

    #@b1
    .line 158
    .restart local v9    # "count":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parsed":Z
    :cond_9
    const/4 v2, 0x2

    #@b2
    aget-wide v20, v7, v2

    #@b4
    const-wide/16 v22, 0x1f4

    #@b6
    add-long v20, v20, v22

    #@b8
    const-wide/16 v22, 0x3e8

    #@ba
    div-long v18, v20, v22

    #@bc
    .restart local v18    # "totalTime":J
    goto :goto_6

    #@bd
    .line 166
    :cond_a
    move-object/from16 v0, p4

    #@bf
    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    move-result-object v14

    #@c3
    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@c5
    .line 167
    .local v14, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    #@c7
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@c9
    if-ne v2, v5, :cond_b

    #@cb
    .line 168
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@cd
    add-int/2addr v2, v9

    #@ce
    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@d0
    .line 169
    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@d2
    move-wide/from16 v20, v0

    #@d4
    add-long v20, v20, v18

    #@d6
    move-wide/from16 v0, v20

    #@d8
    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@da
    goto :goto_7

    #@db
    .line 171
    :cond_b
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@dd
    .line 172
    move-wide/from16 v0, v18

    #@df
    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@e1
    .line 173
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@e3
    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e5
    goto :goto_7

    #@e6
    .line 176
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :cond_c
    if-nez v16, :cond_7

    #@e8
    .line 178
    :try_start_2
    const-string/jumbo v2, "KernelWakelockReader"

    #@eb
    new-instance v5, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v8, "Failed to parse proc line: "

    #@f3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v5

    #@f7
    .line 179
    new-instance v8, Ljava/lang/String;

    #@f9
    sub-int v17, v4, v3

    #@fb
    move-object/from16 v0, p1

    #@fd
    move/from16 v1, v17

    #@ff
    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    #@102
    .line 178
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v5

    #@10a
    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10d
    goto :goto_7

    #@10e
    .line 180
    :catch_0
    move-exception v10

    #@10f
    .line 181
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "KernelWakelockReader"

    #@112
    const-string/jumbo v5, "Failed to parse proc line!"

    #@115
    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@118
    goto :goto_7

    #@119
    .line 195
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "j":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsed":Z
    .end local v18    # "totalTime":J
    .restart local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_d
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@11b
    move-object/from16 v0, p4

    #@11d
    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11f
    monitor-exit p0

    #@120
    .line 196
    return-object p4
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 66
    const v8, 0x8000

    #@4
    new-array v0, v8, [B

    #@6
    .line 73
    .local v0, "buffer":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    #@8
    const-string/jumbo v8, "/proc/wakelocks"

    #@b
    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@e
    .line 74
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    #@f
    .line 86
    .local v7, "wakeup_sources":Z
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    #@12
    move-result v6

    #@13
    .line 87
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@16
    .line 93
    if-lez v6, :cond_1

    #@18
    .line 94
    array-length v8, v0

    #@19
    if-lt v6, v8, :cond_0

    #@1b
    .line 95
    const-string/jumbo v8, "KernelWakelockReader"

    #@1e
    new-instance v9, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v10, "Kernel wake locks exceeded buffer size "

    #@26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    array-length v10, v0

    #@2b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 98
    :cond_0
    const/4 v4, 0x0

    #@37
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    #@39
    .line 99
    aget-byte v8, v0, v4

    #@3b
    if-nez v8, :cond_2

    #@3d
    .line 100
    move v6, v4

    #@3e
    .line 105
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0, v0, v6, v7, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    #@41
    move-result-object v8

    #@42
    return-object v8

    #@43
    .line 75
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "wakeup_sources":Z
    :catch_0
    move-exception v1

    #@44
    .line 77
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    #@46
    const-string/jumbo v8, "/d/wakeup_sources"

    #@49
    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@4c
    .line 78
    .restart local v5    # "is":Ljava/io/FileInputStream;
    const/4 v7, 0x1

    #@4d
    .restart local v7    # "wakeup_sources":Z
    goto :goto_0

    #@4e
    .line 79
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wakeup_sources":Z
    :catch_1
    move-exception v3

    #@4f
    .line 80
    .local v3, "e2":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v8, "KernelWakelockReader"

    #@52
    const-string/jumbo v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    #@55
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@58
    .line 82
    return-object v10

    #@59
    .line 88
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    #@5a
    .line 89
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "KernelWakelockReader"

    #@5d
    const-string/jumbo v9, "failed to read kernel wakelocks"

    #@60
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    .line 90
    return-object v10

    #@64
    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    .restart local v7    # "wakeup_sources":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@66
    goto :goto_1
.end method

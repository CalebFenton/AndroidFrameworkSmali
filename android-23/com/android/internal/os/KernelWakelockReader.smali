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
    .line 29
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@3
    .line 33
    const/4 v0, 0x6

    #@4
    new-array v0, v0, [I

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    #@b
    .line 43
    const/4 v0, 0x7

    #@c
    new-array v0, v0, [I

    #@e
    fill-array-data v0, :array_1

    #@11
    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    #@13
    .line 27
    return-void

    #@14
    .line 33
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
    .line 43
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    new-array v0, v1, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    #@8
    .line 56
    new-array v0, v1, [J

    #@a
    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    #@c
    .line 27
    return-void
.end method

.method private parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 24
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    #@0
    .prologue
    .line 116
    const/16 v16, 0x0

    #@2
    .line 120
    .local v16, "numUpdatedWlNames":I
    const/4 v11, 0x0

    #@3
    .local v11, "i":I
    :goto_0
    move/from16 v0, p2

    #@5
    if-ge v11, v0, :cond_0

    #@7
    aget-byte v2, p1, v11

    #@9
    const/16 v5, 0xa

    #@b
    if-eq v2, v5, :cond_0

    #@d
    aget-byte v2, p1, v11

    #@f
    if-eqz v2, :cond_0

    #@11
    add-int/lit8 v11, v11, 0x1

    #@13
    goto :goto_0

    #@14
    .line 121
    :cond_0
    add-int/lit8 v4, v11, 0x1

    #@16
    .local v4, "endIndex":I
    move v3, v4

    #@17
    .line 123
    .local v3, "startIndex":I
    monitor-enter p0

    #@18
    .line 124
    :try_start_0
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    sput v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@1e
    .line 125
    :goto_1
    move/from16 v0, p2

    #@20
    if-ge v4, v0, :cond_b

    #@22
    .line 126
    move v4, v3

    #@23
    .line 127
    :goto_2
    move/from16 v0, p2

    #@25
    if-ge v4, v0, :cond_1

    #@27
    aget-byte v2, p1, v4

    #@29
    const/16 v5, 0xa

    #@2b
    if-eq v2, v5, :cond_1

    #@2d
    aget-byte v2, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 128
    add-int/lit8 v4, v4, 0x1

    #@33
    goto :goto_2

    #@34
    .line 129
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@36
    .line 132
    add-int/lit8 v2, p2, -0x1

    #@38
    if-lt v4, v2, :cond_2

    #@3a
    monitor-exit p0

    #@3b
    .line 133
    return-object p4

    #@3c
    .line 136
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@3e
    iget-object v6, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    #@40
    .line 137
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@42
    iget-object v7, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    #@44
    .line 141
    .local v7, "wlData":[J
    move v13, v3

    #@45
    .local v13, "j":I
    :goto_3
    if-ge v13, v4, :cond_4

    #@47
    .line 142
    aget-byte v2, p1, v13

    #@49
    and-int/lit16 v2, v2, 0x80

    #@4b
    if-eqz v2, :cond_3

    #@4d
    const/16 v2, 0x3f

    #@4f
    aput-byte v2, p1, v13

    #@51
    .line 141
    :cond_3
    add-int/lit8 v13, v13, 0x1

    #@53
    goto :goto_3

    #@54
    .line 145
    :cond_4
    if-eqz p3, :cond_6

    #@56
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    #@58
    .line 147
    :goto_4
    const/4 v8, 0x0

    #@59
    move-object/from16 v2, p1

    #@5b
    .line 144
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    #@5e
    move-result v17

    #@5f
    .line 149
    .local v17, "parsed":Z
    const/4 v2, 0x0

    #@60
    aget-object v15, v6, v2

    #@62
    .line 150
    .local v15, "name":Ljava/lang/String;
    const/4 v2, 0x1

    #@63
    aget-wide v20, v7, v2

    #@65
    move-wide/from16 v0, v20

    #@67
    long-to-int v9, v0

    #@68
    .line 152
    .local v9, "count":I
    if-eqz p3, :cond_7

    #@6a
    .line 154
    const/4 v2, 0x2

    #@6b
    aget-wide v20, v7, v2

    #@6d
    const-wide/16 v22, 0x3e8

    #@6f
    mul-long v18, v20, v22

    #@71
    .line 160
    .local v18, "totalTime":J
    :goto_5
    if-eqz v17, :cond_a

    #@73
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@76
    move-result v2

    #@77
    if-lez v2, :cond_a

    #@79
    .line 161
    move-object/from16 v0, p4

    #@7b
    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    #@7e
    move-result v2

    #@7f
    if-nez v2, :cond_8

    #@81
    .line 162
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@83
    .line 163
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@85
    .line 162
    move-wide/from16 v0, v18

    #@87
    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    #@8a
    move-object/from16 v0, p4

    #@8c
    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 164
    add-int/lit8 v16, v16, 0x1

    #@91
    .line 185
    :cond_5
    :goto_6
    move v3, v4

    #@92
    goto :goto_1

    #@93
    .line 146
    .end local v9    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_6
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    #@95
    goto :goto_4

    #@96
    .line 157
    .restart local v9    # "count":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parsed":Z
    :cond_7
    const/4 v2, 0x2

    #@97
    aget-wide v20, v7, v2

    #@99
    const-wide/16 v22, 0x1f4

    #@9b
    add-long v20, v20, v22

    #@9d
    const-wide/16 v22, 0x3e8

    #@9f
    div-long v18, v20, v22

    #@a1
    .restart local v18    # "totalTime":J
    goto :goto_5

    #@a2
    .line 166
    :cond_8
    move-object/from16 v0, p4

    #@a4
    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    move-result-object v14

    #@a8
    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@aa
    .line 167
    .local v14, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    #@ac
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@ae
    if-ne v2, v5, :cond_9

    #@b0
    .line 168
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@b2
    add-int/2addr v2, v9

    #@b3
    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@b5
    .line 169
    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@b7
    move-wide/from16 v20, v0

    #@b9
    add-long v20, v20, v18

    #@bb
    move-wide/from16 v0, v20

    #@bd
    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bf
    goto :goto_6

    #@c0
    .line 123
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v13    # "j":I
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :catchall_0
    move-exception v2

    #@c1
    monitor-exit p0

    #@c2
    throw v2

    #@c3
    .line 171
    .restart local v6    # "nameStringArray":[Ljava/lang/String;
    .restart local v7    # "wlData":[J
    .restart local v9    # "count":I
    .restart local v13    # "j":I
    .restart local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parsed":Z
    .restart local v18    # "totalTime":J
    :cond_9
    :try_start_2
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@c5
    .line 172
    move-wide/from16 v0, v18

    #@c7
    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@c9
    .line 173
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@cb
    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cd
    .line 174
    add-int/lit8 v16, v16, 0x1

    #@cf
    goto :goto_6

    #@d0
    .line 177
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :cond_a
    if-nez v17, :cond_5

    #@d2
    .line 179
    :try_start_3
    const-string/jumbo v2, "KernelWakelockReader"

    #@d5
    new-instance v5, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v8, "Failed to parse proc line: "

    #@dd
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v5

    #@e1
    .line 180
    new-instance v8, Ljava/lang/String;

    #@e3
    sub-int v20, v4, v3

    #@e5
    move-object/from16 v0, p1

    #@e7
    move/from16 v1, v20

    #@e9
    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    #@ec
    .line 179
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v5

    #@f4
    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@f7
    goto :goto_6

    #@f8
    .line 181
    :catch_0
    move-exception v10

    #@f9
    .line 182
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "KernelWakelockReader"

    #@fc
    const-string/jumbo v5, "Failed to parse proc line!"

    #@ff
    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto :goto_6

    #@103
    .line 188
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "j":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    #@106
    move-result v2

    #@107
    move/from16 v0, v16

    #@109
    if-eq v2, v0, :cond_d

    #@10b
    .line 190
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    #@10e
    move-result-object v2

    #@10f
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@112
    move-result-object v12

    #@113
    .line 191
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_c
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@116
    move-result v2

    #@117
    if-eqz v2, :cond_d

    #@119
    .line 192
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11c
    move-result-object v2

    #@11d
    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@11f
    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    #@121
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@123
    if-eq v2, v5, :cond_c

    #@125
    .line 193
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    #@128
    goto :goto_7

    #@129
    .line 198
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_d
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    #@12b
    move-object/from16 v0, p4

    #@12d
    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@12f
    monitor-exit p0

    #@130
    .line 199
    return-object p4
.end method


# virtual methods
.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 64
    const v8, 0x8000

    #@4
    new-array v0, v8, [B

    #@6
    .line 71
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
    .line 72
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    #@f
    .line 84
    .local v7, "wakeup_sources":Z
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    #@12
    move-result v6

    #@13
    .line 85
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@16
    .line 91
    if-lez v6, :cond_1

    #@18
    .line 92
    array-length v8, v0

    #@19
    if-lt v6, v8, :cond_0

    #@1b
    .line 93
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
    .line 96
    :cond_0
    const/4 v4, 0x0

    #@37
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    #@39
    .line 97
    aget-byte v8, v0, v4

    #@3b
    if-nez v8, :cond_2

    #@3d
    .line 98
    move v6, v4

    #@3e
    .line 103
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v0, v6, v7, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    #@41
    move-result-object v8

    #@42
    return-object v8

    #@43
    .line 73
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "wakeup_sources":Z
    :catch_0
    move-exception v1

    #@44
    .line 75
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
    .line 76
    .restart local v5    # "is":Ljava/io/FileInputStream;
    const/4 v7, 0x1

    #@4d
    .restart local v7    # "wakeup_sources":Z
    goto :goto_0

    #@4e
    .line 77
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wakeup_sources":Z
    :catch_1
    move-exception v3

    #@4f
    .line 78
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
    .line 80
    return-object v10

    #@59
    .line 86
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    #@5a
    .line 87
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "KernelWakelockReader"

    #@5d
    const-string/jumbo v9, "failed to read kernel wakelocks"

    #@60
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    .line 88
    return-object v10

    #@64
    .line 96
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

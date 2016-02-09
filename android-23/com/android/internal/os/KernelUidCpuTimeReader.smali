.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastPowerMaUs:Landroid/util/SparseLongArray;

.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Landroid/util/SparseLongArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@a
    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@11
    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@18
    .line 61
    const-wide/16 v0, 0x0

    #@1a
    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    #@1c
    .line 40
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 37
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    #@0
    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v30

    #@4
    const-wide/16 v32, 0x3e8

    #@6
    mul-long v16, v30, v32

    #@8
    .line 71
    .local v16, "nowUs":J
    const/16 v30, 0x0

    #@a
    const/4 v15, 0x0

    #@b
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    #@d
    new-instance v4, Ljava/io/FileReader;

    #@f
    const-string/jumbo v31, "/proc/uid_cputime/show_uid_stat"

    #@12
    move-object/from16 v0, v31

    #@14
    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@17
    move-object/from16 v0, v20

    #@19
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 72
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .local v20, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v22, Landroid/text/TextUtils$SimpleStringSplitter;

    #@1e
    const/16 v4, 0x20

    #@20
    move-object/from16 v0, v22

    #@22
    invoke-direct {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@25
    .line 74
    .local v22, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@28
    move-result-object v14

    #@29
    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_8

    #@2b
    .line 75
    move-object/from16 v0, v22

    #@2d
    invoke-virtual {v0, v14}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@30
    .line 76
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@33
    move-result-object v23

    #@34
    .line 77
    .local v23, "uidStr":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    add-int/lit8 v4, v4, -0x1

    #@3a
    const/16 v31, 0x0

    #@3c
    move-object/from16 v0, v23

    #@3e
    move/from16 v1, v31

    #@40
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    const/16 v31, 0xa

    #@46
    move/from16 v0, v31

    #@48
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@4b
    move-result v5

    #@4c
    .line 78
    .local v5, "uid":I
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    const/16 v31, 0xa

    #@52
    move/from16 v0, v31

    #@54
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@57
    move-result-wide v28

    #@58
    .line 79
    .local v28, "userTimeUs":J
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    const/16 v31, 0xa

    #@5e
    move/from16 v0, v31

    #@60
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@63
    move-result-wide v24

    #@64
    .line 81
    .local v24, "systemTimeUs":J
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_5

    #@6a
    .line 82
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    const/16 v31, 0xa

    #@70
    move/from16 v0, v31

    #@72
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@75
    move-result-wide v32

    #@76
    const-wide/16 v34, 0x3e8

    #@78
    div-long v18, v32, v34

    #@7a
    .line 87
    .local v18, "powerMaUs":J
    :goto_1
    if-eqz p1, :cond_3

    #@7c
    .line 88
    move-wide/from16 v6, v28

    #@7e
    .line 89
    .local v6, "userTimeDeltaUs":J
    move-wide/from16 v8, v24

    #@80
    .line 90
    .local v8, "systemTimeDeltaUs":J
    move-wide/from16 v10, v18

    #@82
    .line 91
    .local v10, "powerDeltaMaUs":J
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@86
    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    #@89
    move-result v13

    #@8a
    .line 92
    .local v13, "index":I
    if-ltz v13, :cond_1

    #@8c
    .line 93
    move-object/from16 v0, p0

    #@8e
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@90
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@93
    move-result-wide v32

    #@94
    sub-long v6, v6, v32

    #@96
    .line 94
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@9a
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@9d
    move-result-wide v32

    #@9e
    sub-long v8, v8, v32

    #@a0
    .line 95
    move-object/from16 v0, p0

    #@a2
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@a4
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@a7
    move-result-wide v32

    #@a8
    sub-long v10, v10, v32

    #@aa
    .line 97
    move-object/from16 v0, p0

    #@ac
    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    #@ae
    move-wide/from16 v32, v0

    #@b0
    sub-long v26, v16, v32

    #@b2
    .line 98
    .local v26, "timeDiffUs":J
    const-wide/16 v32, 0x0

    #@b4
    cmp-long v4, v6, v32

    #@b6
    if-ltz v4, :cond_0

    #@b8
    const-wide/16 v32, 0x0

    #@ba
    cmp-long v4, v8, v32

    #@bc
    if-gez v4, :cond_6

    #@be
    .line 99
    :cond_0
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    #@c0
    const-string/jumbo v4, "Malformed cpu data for UID="

    #@c3
    move-object/from16 v0, v21

    #@c5
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c8
    .line 100
    .local v21, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    #@ca
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    const-string/jumbo v31, "!\n"

    #@d1
    move-object/from16 v0, v31

    #@d3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    .line 101
    const-string/jumbo v4, "Time between reads: "

    #@d9
    move-object/from16 v0, v21

    #@db
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 102
    const-wide/16 v32, 0x3e8

    #@e0
    div-long v32, v26, v32

    #@e2
    move-wide/from16 v0, v32

    #@e4
    move-object/from16 v2, v21

    #@e6
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@e9
    .line 103
    const-string/jumbo v4, "\n"

    #@ec
    move-object/from16 v0, v21

    #@ee
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 104
    const-string/jumbo v4, "Previous times: u="

    #@f4
    move-object/from16 v0, v21

    #@f6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    .line 105
    move-object/from16 v0, p0

    #@fb
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@fd
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@100
    move-result-wide v32

    #@101
    const-wide/16 v34, 0x3e8

    #@103
    div-long v32, v32, v34

    #@105
    move-wide/from16 v0, v32

    #@107
    move-object/from16 v2, v21

    #@109
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@10c
    .line 106
    const-string/jumbo v4, " s="

    #@10f
    move-object/from16 v0, v21

    #@111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    .line 107
    move-object/from16 v0, p0

    #@116
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@118
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@11b
    move-result-wide v32

    #@11c
    const-wide/16 v34, 0x3e8

    #@11e
    div-long v32, v32, v34

    #@120
    move-wide/from16 v0, v32

    #@122
    move-object/from16 v2, v21

    #@124
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@127
    .line 108
    const-string/jumbo v4, " p="

    #@12a
    move-object/from16 v0, v21

    #@12c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@134
    move-object/from16 v31, v0

    #@136
    move-object/from16 v0, v31

    #@138
    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@13b
    move-result-wide v32

    #@13c
    const-wide/16 v34, 0x3e8

    #@13e
    div-long v32, v32, v34

    #@140
    move-wide/from16 v0, v32

    #@142
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@145
    .line 109
    const-string/jumbo v4, "mAms\n"

    #@148
    move-object/from16 v0, v21

    #@14a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    .line 111
    const-string/jumbo v4, "Current times: u="

    #@150
    move-object/from16 v0, v21

    #@152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    .line 112
    const-wide/16 v32, 0x3e8

    #@157
    div-long v32, v28, v32

    #@159
    move-wide/from16 v0, v32

    #@15b
    move-object/from16 v2, v21

    #@15d
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@160
    .line 113
    const-string/jumbo v4, " s="

    #@163
    move-object/from16 v0, v21

    #@165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    .line 114
    const-wide/16 v32, 0x3e8

    #@16a
    div-long v32, v24, v32

    #@16c
    move-wide/from16 v0, v32

    #@16e
    move-object/from16 v2, v21

    #@170
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@173
    .line 115
    const-string/jumbo v4, " p="

    #@176
    move-object/from16 v0, v21

    #@178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v4

    #@17c
    const-wide/16 v32, 0x3e8

    #@17e
    div-long v32, v18, v32

    #@180
    move-wide/from16 v0, v32

    #@182
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@185
    .line 116
    const-string/jumbo v4, "mAms\n"

    #@188
    move-object/from16 v0, v21

    #@18a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    .line 117
    const-string/jumbo v4, "Delta: u="

    #@190
    move-object/from16 v0, v21

    #@192
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    .line 118
    const-wide/16 v32, 0x3e8

    #@197
    div-long v32, v6, v32

    #@199
    move-wide/from16 v0, v32

    #@19b
    move-object/from16 v2, v21

    #@19d
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1a0
    .line 119
    const-string/jumbo v4, " s="

    #@1a3
    move-object/from16 v0, v21

    #@1a5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    .line 120
    const-wide/16 v32, 0x3e8

    #@1aa
    div-long v32, v8, v32

    #@1ac
    move-wide/from16 v0, v32

    #@1ae
    move-object/from16 v2, v21

    #@1b0
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1b3
    .line 121
    const-string/jumbo v4, " p="

    #@1b6
    move-object/from16 v0, v21

    #@1b8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v4

    #@1bc
    const-wide/16 v32, 0x3e8

    #@1be
    div-long v32, v10, v32

    #@1c0
    move-wide/from16 v0, v32

    #@1c2
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v4

    #@1c6
    const-string/jumbo v31, "mAms"

    #@1c9
    move-object/from16 v0, v31

    #@1cb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    .line 122
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    #@1d1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v31

    #@1d5
    move-object/from16 v0, v31

    #@1d7
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1da
    .line 124
    const-wide/16 v6, 0x0

    #@1dc
    .line 125
    const-wide/16 v8, 0x0

    #@1de
    .line 126
    const-wide/16 v10, 0x0

    #@1e0
    .line 130
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v26    # "timeDiffUs":J
    :cond_1
    const-wide/16 v32, 0x0

    #@1e2
    cmp-long v4, v6, v32

    #@1e4
    if-nez v4, :cond_2

    #@1e6
    const-wide/16 v32, 0x0

    #@1e8
    cmp-long v4, v8, v32

    #@1ea
    if-eqz v4, :cond_7

    #@1ec
    :cond_2
    :goto_3
    move-object/from16 v4, p1

    #@1ee
    .line 131
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJJ)V

    #@1f1
    .line 135
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    :cond_3
    move-object/from16 v0, p0

    #@1f3
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@1f5
    move-wide/from16 v0, v28

    #@1f7
    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    #@1fa
    .line 136
    move-object/from16 v0, p0

    #@1fc
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@1fe
    move-wide/from16 v0, v24

    #@200
    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    #@203
    .line 137
    move-object/from16 v0, p0

    #@205
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@207
    move-wide/from16 v0, v18

    #@209
    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@20c
    goto/16 :goto_0

    #@20e
    .line 141
    .end local v5    # "uid":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "powerMaUs":J
    .end local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v23    # "uidStr":Ljava/lang/String;
    .end local v24    # "systemTimeUs":J
    .end local v28    # "userTimeUs":J
    :catch_0
    move-exception v4

    #@20f
    move-object/from16 v15, v20

    #@211
    .end local v20    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@212
    :catchall_0
    move-exception v30

    #@213
    move-object/from16 v36, v30

    #@215
    move-object/from16 v30, v4

    #@217
    move-object/from16 v4, v36

    #@219
    :goto_5
    if-eqz v15, :cond_4

    #@21b
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@21e
    :cond_4
    :goto_6
    if-eqz v30, :cond_c

    #@220
    :try_start_4
    throw v30
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@221
    .line 139
    :catch_1
    move-exception v12

    #@222
    .line 140
    .local v12, "e":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    #@225
    const-string/jumbo v30, "Failed to read uid_cputime"

    #@228
    move-object/from16 v0, v30

    #@22a
    invoke-static {v4, v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22d
    .line 142
    .end local v12    # "e":Ljava/io/IOException;
    :goto_8
    move-wide/from16 v0, v16

    #@22f
    move-object/from16 v2, p0

    #@231
    iput-wide v0, v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    #@233
    .line 69
    return-void

    #@234
    .line 84
    .restart local v5    # "uid":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v23    # "uidStr":Ljava/lang/String;
    .restart local v24    # "systemTimeUs":J
    .restart local v28    # "userTimeUs":J
    :cond_5
    const-wide/16 v18, 0x0

    #@236
    .restart local v18    # "powerMaUs":J
    goto/16 :goto_1

    #@238
    .line 98
    .restart local v6    # "userTimeDeltaUs":J
    .restart local v8    # "systemTimeDeltaUs":J
    .restart local v10    # "powerDeltaMaUs":J
    .restart local v13    # "index":I
    .restart local v26    # "timeDiffUs":J
    :cond_6
    const-wide/16 v32, 0x0

    #@23a
    cmp-long v4, v10, v32

    #@23c
    if-gez v4, :cond_1

    #@23e
    goto/16 :goto_2

    #@240
    .line 130
    .end local v26    # "timeDiffUs":J
    :cond_7
    const-wide/16 v32, 0x0

    #@242
    cmp-long v4, v10, v32

    #@244
    if-eqz v4, :cond_3

    #@246
    goto :goto_3

    #@247
    .line 141
    .end local v5    # "uid":I
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    .end local v18    # "powerMaUs":J
    .end local v23    # "uidStr":Ljava/lang/String;
    .end local v24    # "systemTimeUs":J
    .end local v28    # "userTimeUs":J
    :cond_8
    if-eqz v20, :cond_9

    #@249
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@24c
    :cond_9
    :goto_9
    if-eqz v30, :cond_a

    #@24e
    :try_start_6
    throw v30
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@24f
    .line 139
    :catch_2
    move-exception v12

    #@250
    .restart local v12    # "e":Ljava/io/IOException;
    move-object/from16 v15, v20

    #@252
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    #@253
    .line 141
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v30

    #@254
    goto :goto_9

    #@255
    :cond_a
    move-object/from16 v15, v20

    #@257
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    #@258
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v31

    #@259
    if-nez v30, :cond_b

    #@25b
    move-object/from16 v30, v31

    #@25d
    goto :goto_6

    #@25e
    :cond_b
    move-object/from16 v0, v30

    #@260
    move-object/from16 v1, v31

    #@262
    if-eq v0, v1, :cond_4

    #@264
    :try_start_7
    invoke-virtual/range {v30 .. v31}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@267
    goto :goto_6

    #@268
    :cond_c
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@269
    .local v15, "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    #@26a
    goto :goto_5

    #@26b
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v4

    #@26c
    move-object/from16 v15, v20

    #@26e
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@26f
    .local v15, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    #@270
    goto :goto_4
.end method

.method public removeUid(I)V
    .locals 8
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 150
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    #@6
    move-result v1

    #@7
    .line 151
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@9
    .line 152
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@b
    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@e
    .line 153
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@10
    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@13
    .line 154
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@15
    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@18
    .line 157
    :cond_0
    const/4 v2, 0x0

    #@19
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    #@1b
    const-string/jumbo v4, "/proc/uid_cputime/remove_uid_range"

    #@1e
    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@21
    .line 158
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    const-string/jumbo v6, "-"

    #@31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    #@44
    .line 159
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@47
    .line 162
    if-eqz v3, :cond_1

    #@49
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@4c
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    #@4e
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@4f
    .line 160
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    #@51
    .line 161
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_1
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    #@54
    const-string/jumbo v5, "failed to remove uid from uid_cputime module"

    #@57
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@5b
    .line 162
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v5

    #@5c
    goto :goto_0

    #@5d
    :cond_2
    move-object v2, v3

    #@5e
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_2

    #@5f
    .local v2, "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    #@60
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@61
    :catchall_0
    move-exception v5

    #@62
    move-object v7, v5

    #@63
    move-object v5, v4

    #@64
    move-object v4, v7

    #@65
    :goto_4
    if-eqz v2, :cond_3

    #@67
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@6a
    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    #@6c
    :try_start_6
    throw v5

    #@6d
    .line 160
    :catch_3
    move-exception v0

    #@6e
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@6f
    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    #@70
    if-nez v5, :cond_4

    #@72
    move-object v5, v6

    #@73
    goto :goto_5

    #@74
    :cond_4
    if-eq v5, v6, :cond_3

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@79
    goto :goto_5

    #@7a
    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@7b
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    #@7c
    goto :goto_4

    #@7d
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    #@7e
    move-object v2, v3

    #@7f
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_4

    #@80
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    #@81
    move-object v2, v3

    #@82
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method

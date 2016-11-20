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
    .line 88
    .local v18, "powerMaUs":J
    :goto_1
    if-eqz p1, :cond_3

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    #@80
    move-wide/from16 v32, v0

    #@82
    const-wide/16 v34, 0x0

    #@84
    cmp-long v4, v32, v34

    #@86
    if-eqz v4, :cond_3

    #@88
    .line 89
    move-wide/from16 v6, v28

    #@8a
    .line 90
    .local v6, "userTimeDeltaUs":J
    move-wide/from16 v8, v24

    #@8c
    .line 91
    .local v8, "systemTimeDeltaUs":J
    move-wide/from16 v10, v18

    #@8e
    .line 92
    .local v10, "powerDeltaMaUs":J
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@92
    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    #@95
    move-result v13

    #@96
    .line 93
    .local v13, "index":I
    if-ltz v13, :cond_1

    #@98
    .line 94
    move-object/from16 v0, p0

    #@9a
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@9c
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@9f
    move-result-wide v32

    #@a0
    sub-long v6, v28, v32

    #@a2
    .line 95
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@a6
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@a9
    move-result-wide v32

    #@aa
    sub-long v8, v24, v32

    #@ac
    .line 96
    move-object/from16 v0, p0

    #@ae
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@b0
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@b3
    move-result-wide v32

    #@b4
    sub-long v10, v10, v32

    #@b6
    .line 98
    move-object/from16 v0, p0

    #@b8
    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    #@ba
    move-wide/from16 v32, v0

    #@bc
    sub-long v26, v16, v32

    #@be
    .line 99
    .local v26, "timeDiffUs":J
    const-wide/16 v32, 0x0

    #@c0
    cmp-long v4, v6, v32

    #@c2
    if-ltz v4, :cond_0

    #@c4
    const-wide/16 v32, 0x0

    #@c6
    cmp-long v4, v8, v32

    #@c8
    if-gez v4, :cond_6

    #@ca
    .line 100
    :cond_0
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    #@cc
    const-string/jumbo v4, "Malformed cpu data for UID="

    #@cf
    move-object/from16 v0, v21

    #@d1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d4
    .line 101
    .local v21, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    #@d6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    const-string/jumbo v31, "!\n"

    #@dd
    move-object/from16 v0, v31

    #@df
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    .line 102
    const-string/jumbo v4, "Time between reads: "

    #@e5
    move-object/from16 v0, v21

    #@e7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    .line 103
    const-wide/16 v32, 0x3e8

    #@ec
    div-long v32, v26, v32

    #@ee
    move-wide/from16 v0, v32

    #@f0
    move-object/from16 v2, v21

    #@f2
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@f5
    .line 104
    const-string/jumbo v4, "\n"

    #@f8
    move-object/from16 v0, v21

    #@fa
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 105
    const-string/jumbo v4, "Previous times: u="

    #@100
    move-object/from16 v0, v21

    #@102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    .line 106
    move-object/from16 v0, p0

    #@107
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@109
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@10c
    move-result-wide v32

    #@10d
    const-wide/16 v34, 0x3e8

    #@10f
    div-long v32, v32, v34

    #@111
    move-wide/from16 v0, v32

    #@113
    move-object/from16 v2, v21

    #@115
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@118
    .line 107
    const-string/jumbo v4, " s="

    #@11b
    move-object/from16 v0, v21

    #@11d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    .line 108
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@124
    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@127
    move-result-wide v32

    #@128
    const-wide/16 v34, 0x3e8

    #@12a
    div-long v32, v32, v34

    #@12c
    move-wide/from16 v0, v32

    #@12e
    move-object/from16 v2, v21

    #@130
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@133
    .line 109
    const-string/jumbo v4, " p="

    #@136
    move-object/from16 v0, v21

    #@138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v4

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@140
    move-object/from16 v31, v0

    #@142
    move-object/from16 v0, v31

    #@144
    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@147
    move-result-wide v32

    #@148
    const-wide/16 v34, 0x3e8

    #@14a
    div-long v32, v32, v34

    #@14c
    move-wide/from16 v0, v32

    #@14e
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@151
    .line 110
    const-string/jumbo v4, "mAms\n"

    #@154
    move-object/from16 v0, v21

    #@156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    .line 112
    const-string/jumbo v4, "Current times: u="

    #@15c
    move-object/from16 v0, v21

    #@15e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    .line 113
    const-wide/16 v32, 0x3e8

    #@163
    div-long v32, v28, v32

    #@165
    move-wide/from16 v0, v32

    #@167
    move-object/from16 v2, v21

    #@169
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@16c
    .line 114
    const-string/jumbo v4, " s="

    #@16f
    move-object/from16 v0, v21

    #@171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    .line 115
    const-wide/16 v32, 0x3e8

    #@176
    div-long v32, v24, v32

    #@178
    move-wide/from16 v0, v32

    #@17a
    move-object/from16 v2, v21

    #@17c
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@17f
    .line 116
    const-string/jumbo v4, " p="

    #@182
    move-object/from16 v0, v21

    #@184
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v4

    #@188
    const-wide/16 v32, 0x3e8

    #@18a
    div-long v32, v18, v32

    #@18c
    move-wide/from16 v0, v32

    #@18e
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@191
    .line 117
    const-string/jumbo v4, "mAms\n"

    #@194
    move-object/from16 v0, v21

    #@196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    .line 118
    const-string/jumbo v4, "Delta: u="

    #@19c
    move-object/from16 v0, v21

    #@19e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    .line 119
    const-wide/16 v32, 0x3e8

    #@1a3
    div-long v32, v6, v32

    #@1a5
    move-wide/from16 v0, v32

    #@1a7
    move-object/from16 v2, v21

    #@1a9
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1ac
    .line 120
    const-string/jumbo v4, " s="

    #@1af
    move-object/from16 v0, v21

    #@1b1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    .line 121
    const-wide/16 v32, 0x3e8

    #@1b6
    div-long v32, v8, v32

    #@1b8
    move-wide/from16 v0, v32

    #@1ba
    move-object/from16 v2, v21

    #@1bc
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1bf
    .line 122
    const-string/jumbo v4, " p="

    #@1c2
    move-object/from16 v0, v21

    #@1c4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v4

    #@1c8
    const-wide/16 v32, 0x3e8

    #@1ca
    div-long v32, v10, v32

    #@1cc
    move-wide/from16 v0, v32

    #@1ce
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v4

    #@1d2
    const-string/jumbo v31, "mAms"

    #@1d5
    move-object/from16 v0, v31

    #@1d7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    .line 123
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    #@1dd
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v31

    #@1e1
    move-object/from16 v0, v31

    #@1e3
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e6
    .line 125
    const-wide/16 v6, 0x0

    #@1e8
    .line 126
    const-wide/16 v8, 0x0

    #@1ea
    .line 127
    const-wide/16 v10, 0x0

    #@1ec
    .line 131
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v26    # "timeDiffUs":J
    :cond_1
    const-wide/16 v32, 0x0

    #@1ee
    cmp-long v4, v6, v32

    #@1f0
    if-nez v4, :cond_2

    #@1f2
    const-wide/16 v32, 0x0

    #@1f4
    cmp-long v4, v8, v32

    #@1f6
    if-eqz v4, :cond_7

    #@1f8
    :cond_2
    :goto_3
    move-object/from16 v4, p1

    #@1fa
    .line 132
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJJ)V

    #@1fd
    .line 136
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    :cond_3
    move-object/from16 v0, p0

    #@1ff
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@201
    move-wide/from16 v0, v28

    #@203
    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    #@206
    .line 137
    move-object/from16 v0, p0

    #@208
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@20a
    move-wide/from16 v0, v24

    #@20c
    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    #@20f
    .line 138
    move-object/from16 v0, p0

    #@211
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@213
    move-wide/from16 v0, v18

    #@215
    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@218
    goto/16 :goto_0

    #@21a
    .line 142
    .end local v5    # "uid":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "powerMaUs":J
    .end local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v23    # "uidStr":Ljava/lang/String;
    .end local v24    # "systemTimeUs":J
    .end local v28    # "userTimeUs":J
    :catch_0
    move-exception v4

    #@21b
    move-object/from16 v15, v20

    #@21d
    .end local v20    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21e
    :catchall_0
    move-exception v30

    #@21f
    move-object/from16 v36, v30

    #@221
    move-object/from16 v30, v4

    #@223
    move-object/from16 v4, v36

    #@225
    :goto_5
    if-eqz v15, :cond_4

    #@227
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@22a
    :cond_4
    :goto_6
    if-eqz v30, :cond_c

    #@22c
    :try_start_4
    throw v30
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@22d
    .line 140
    :catch_1
    move-exception v12

    #@22e
    .line 141
    .local v12, "e":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    #@231
    new-instance v30, Ljava/lang/StringBuilder;

    #@233
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@236
    const-string/jumbo v31, "Failed to read uid_cputime: "

    #@239
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v30

    #@23d
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@240
    move-result-object v31

    #@241
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v30

    #@245
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v30

    #@249
    move-object/from16 v0, v30

    #@24b
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24e
    .line 143
    .end local v12    # "e":Ljava/io/IOException;
    :goto_8
    move-wide/from16 v0, v16

    #@250
    move-object/from16 v2, p0

    #@252
    iput-wide v0, v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    #@254
    .line 69
    return-void

    #@255
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

    #@257
    .restart local v18    # "powerMaUs":J
    goto/16 :goto_1

    #@259
    .line 99
    .restart local v6    # "userTimeDeltaUs":J
    .restart local v8    # "systemTimeDeltaUs":J
    .restart local v10    # "powerDeltaMaUs":J
    .restart local v13    # "index":I
    .restart local v26    # "timeDiffUs":J
    :cond_6
    const-wide/16 v32, 0x0

    #@25b
    cmp-long v4, v10, v32

    #@25d
    if-gez v4, :cond_1

    #@25f
    goto/16 :goto_2

    #@261
    .line 131
    .end local v26    # "timeDiffUs":J
    :cond_7
    const-wide/16 v32, 0x0

    #@263
    cmp-long v4, v10, v32

    #@265
    if-eqz v4, :cond_3

    #@267
    goto :goto_3

    #@268
    .line 142
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

    #@26a
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@26d
    :cond_9
    :goto_9
    if-eqz v30, :cond_a

    #@26f
    :try_start_6
    throw v30
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@270
    .line 140
    :catch_2
    move-exception v12

    #@271
    .restart local v12    # "e":Ljava/io/IOException;
    move-object/from16 v15, v20

    #@273
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    #@274
    .line 142
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v30

    #@275
    goto :goto_9

    #@276
    :cond_a
    move-object/from16 v15, v20

    #@278
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    #@279
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v31

    #@27a
    if-nez v30, :cond_b

    #@27c
    move-object/from16 v30, v31

    #@27e
    goto :goto_6

    #@27f
    :cond_b
    move-object/from16 v0, v30

    #@281
    move-object/from16 v1, v31

    #@283
    if-eq v0, v1, :cond_4

    #@285
    :try_start_7
    invoke-virtual/range {v30 .. v31}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@288
    goto :goto_6

    #@289
    :cond_c
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@28a
    .local v15, "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    #@28b
    goto :goto_5

    #@28c
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v4

    #@28d
    move-object/from16 v15, v20

    #@28f
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@290
    .local v15, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    #@291
    goto :goto_4
.end method

.method public removeUid(I)V
    .locals 8
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 151
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    #@6
    move-result v1

    #@7
    .line 152
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@9
    .line 153
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    #@b
    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@e
    .line 154
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    #@10
    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@13
    .line 155
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    #@15
    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@18
    .line 158
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
    .line 159
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
    .line 160
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@47
    .line 163
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
    .line 161
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    #@51
    .line 162
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_1
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    #@54
    const-string/jumbo v5, "failed to remove uid from uid_cputime module"

    #@57
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@5b
    .line 163
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
    .line 161
    :catch_3
    move-exception v0

    #@6e
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@6f
    .line 163
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
